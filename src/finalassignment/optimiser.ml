(* This will take a parse tree and optimise it before evaluation *)
open Ast
open Printf
open Evaluator

let int_to_const x = Const (unwrap_int x)

let functions_list = Hashtbl.create 5

let memoisations = Hashtbl.create 5 (* Table to keep track of function calls and their results *)

(* construct_let :: string_list -> expression_list -> expression -> expression *)
let rec construct_let exps acts body =
	match exps, acts with
    | ([x], [y])     -> Let(x, y, body)
    | (x::xs, y::ys) -> Let(x, y, (construct_let xs ys body))
    | _, _           -> failwith "construct_let"

(* Function for counting tree size - used for testing efficacy of optimisations *)
let rec size_of_tree =  function
	| Seq(e1,e2)              -> 1 + (size_of_tree e1) + (size_of_tree e2)
	| While(e1,e2)            -> 1 + (size_of_tree e1) + (size_of_tree e2)
	| If(e1,e2,e3)            -> 1 + (size_of_tree e1) + (size_of_tree e2) + (size_of_tree e3)
	| Asg(e1,e2)              -> 1 + (size_of_tree e1) + (size_of_tree e2)
	| Deref(e1)               -> 1 + (size_of_tree e1)
	| Operator(op, e1, e2)    -> 1 + (size_of_tree e1) + (size_of_tree e2)
	| Application(Identifier f, el) -> 1
	| Const x                 -> 1
	| Readint                 -> 1
	| Printint e1             -> 1
	| Identifier str          -> 1
	| Let(s1, e1, e2)         -> 1 + (size_of_tree e1) + (size_of_tree e2)
	| New(s1, e1, e2)         -> 1 + (size_of_tree e1) + (size_of_tree e2)
	| Empty                   -> 0
	| For(i, e1)              -> 1 + (size_of_tree e1)

let rec size_of_prog = function
	| [] -> 0
	| (Fundef(name,params,body))::xs -> (size_of_tree body) + (size_of_prog xs)

(* optimise :: expression -> expression *)
(* Takes an expression P1 and optimises to an easier-to-compute expression P2 *)
let rec optimise = function
  | Seq(e1,e2)              -> Seq((optimise e1), (optimise e2))
  | While(e1,e2)            -> While((optimise e1), (optimise e2))
  | If(e1,e2,e3)            -> (match (eval_exp [] e1) with
  	                               | Boolean a -> if(a) then (optimise e2) else (optimise e3)
  	                               | _         -> If((optimise e1),(optimise e2),(optimise e3)))
  | Asg(e1,e2)              -> Asg((optimise e1),(optimise e2))
  | Deref(e1)               -> Deref(e1)
  | Operator(op, e1, e2)    -> (match (optimise e1, optimise e2) with
  	                               | (Const x, Const y)   -> int_to_const (eval_exp [] (Operator(op, e1, e2)))
                                   | _ -> Operator(op, e1, e2))
  | Application(Identifier f, el) -> (*let Fundef(name, params, body) = Hashtbl.find functions_list f in
                                     (match el with
                                   	    | []  -> int_to_const (eval_exp [] body)
                                   	    | xs  -> optimise (construct_let params xs body)
                                     ) *)
																		 if Hashtbl.mem functions_list f
														         then
																			 try
													                 let memo_result = Hashtbl.find memoisations (f,el) in
													                 printf ("Memoised result\n");
													                 memo_result
													             with
													              | Not_found ->
													                        let Fundef(name, params, body) = Hashtbl.find functions_list f in
													                        (match el with
																										| [] -> int_to_const (eval_exp [] body)
																										| xs -> optimise (construct_let params xs body)
																										)
																			else failwith "Application"
  | Const x                 -> Const x
  | Readint                 -> Readint
  | Printint e1             -> Printint e1
  | Identifier str          -> Identifier str
  | Let(s1, e1, e2)         -> (match (optimise e1) with
                                   | Const x -> int_to_const (eval_exp [(s1, (Int x))] e2 )
                                   | _       -> Let(s1,e1,e2))
  | New(s1, e1, e2)         -> (match (optimise e1) with
                                   | Const x -> int_to_const (eval_exp [(s1, (Int x))] e2 )
                                   | _       -> New(s1,e1,e2))
	| For(i, i',e1)              -> For(i, i', e1)
  | Empty                   -> Empty


let optimise_fundef = function
  | Fundef(name, params, body) -> Fundef(name, params, (optimise body))

let rec add_functions = function
    | [] -> ()
    | (Fundef(name,params,body))::xs -> Hashtbl.add functions_list name (Fundef (name, params, body)); add_functions xs

let optimise_prog = function
  | []    -> []
  | xs    ->  add_functions xs; List.map optimise_fundef xs
