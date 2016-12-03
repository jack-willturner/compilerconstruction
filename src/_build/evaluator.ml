open Printf
open Ast

let addr_gbl = ref 0
let newref() = addr_gbl:=!addr_gbl+1; !addr_gbl

let function_list = Hashtbl.create 5 (* List to keep track of the functions and params *)

let memoisations = Hashtbl.create 5 (* Table to keep track of function calls and their results *)

let store = Hashtbl.create 64 (* This will contain the values of the variables *)

let unwrap_bool = function
    | Boolean b -> b
    | _ -> failwith "Attempted to unwrap non-bool"

let unwrap_int = function
    | Int n -> n
    | _ -> failwith "Attempted to unwrap non-int"

let unwrap_string = function
    | String str -> str
    | _ -> failwith "Attempted to unwrap non-string"

(* Translation functions *)
let lequal = function
    | Int x, Int y             -> x <= y
    | _, _ -> failwith "Attempted <= on non-integer expressions"

let gequal = function
    | Int x, Int y             -> x >= y
    | _, _ -> failwith "Attempted >= on non-integer expressions"

let noteq = function
    | Int x, Int y             -> x <> y
    | _, _ -> failwith "Attempted <> on non-integer expressions"

(* Structural equality test *)
let equal = function
    | Int x, Int y  -> x == y
    | String s1, String s2 -> s1 == s2
    | Boolean b1, Boolean b2 -> b1 == b2
    | _ , Empty -> false
    | Empty, _ -> false
    | _ -> failwith "Attempted == on expressions of different types"


(* Logical operation unwrapping the Boolean type *)
let r_and = function
    | Boolean b1, Boolean b2  -> b1 && b2
    | _, _ -> failwith "Attempted AND on non-boolean expressions"

let r_or = function
    | Boolean b1, Boolean b2 -> b1 || b2
    | _, _ -> failwith "Attempted OR on non-boolean expressions"

let r_not = function
    | Boolean b1, _ -> not b1
    | _, _ -> failwith "Attempted NOT on non-boolean expressions"

let rec find (y : string) (env : (string * Ast.return_value) list) = match env with
    | [] -> Int 1
    | (x,x')::xs -> if x = y then x' else find y xs

let rec delete y = function
    | [] -> []
    | (x,x')::xs ->  if x = y then delete y xs else (x,x')::(delete y xs)

let rec replace y y' = function
    | [] -> []
    | (x,x')::xs -> if x = y then (x, y')::xs else (x,x')::(replace y y' xs)

let rec update (x:string) (v:return_value) = function
  | []                          -> failwith "No such variable."
  | (y, Pointer z)::ys  when x = y  -> Hashtbl.replace store (string_of_int z) v
  | y::ys                       -> update x v ys


(* val eval_exp: Ast.expression -> return_value *)
let rec eval_exp env = function
    | Const x                  -> Int x
    | Ast.Empty                -> Empty        (* The empty expression *)
    | Asg(Identifier x, e)     ->
            let v1 = eval_exp env e in
            update x v1 env; v1             (* only mutable variables in store can be assigned to *)
    | While(e1, e2)            ->
            while unwrap_bool(eval_exp env e1) do eval_exp env e2 done; Empty
    | If(e1, e2, e3)           ->
            if unwrap_bool(eval_exp env e1) then eval_exp env e2 else eval_exp env e3
    | Seq(e1, e2)              ->
           let _  = eval_exp env e1 in (* both operations may update the store *)
           let v2 = eval_exp env e2 in
           v2
    | Identifier x             -> String x

    | Operator(Plus, e1, e2)   -> Int (unwrap_int(eval_exp env e1) + unwrap_int(eval_exp env  e2))   (* Basic operations *)
    | Operator(Minus, e1, e2)  -> Int (unwrap_int(eval_exp env e1) - unwrap_int(eval_exp env  e2))
    | Operator(Times, e1, e2)  -> Int (unwrap_int(eval_exp env e1) * unwrap_int(eval_exp env  e2))
    | Operator(Divide, e1, e2) -> Int (unwrap_int(eval_exp env e1) / unwrap_int(eval_exp env  e2))
    | Operator(Leq, e1, e2)    -> Boolean (lequal (eval_exp env e1, eval_exp env e2))
    | Operator(Geq, e1, e2)    -> Boolean (gequal (eval_exp env e1, eval_exp env e2))
    | Operator(Noteq, e1, e2)  -> Boolean (noteq (eval_exp env  e1, eval_exp env e2))
    | Operator(Equal, e1, e2)  -> Boolean (equal (eval_exp env e1, eval_exp env e2))
    | Operator(And, e1, e2)    -> Boolean (unwrap_bool(eval_exp env  e1) &&  unwrap_bool(eval_exp env e2))
    | Operator(Or, e1, e2)     -> Boolean (unwrap_bool(eval_exp env  e1) ||  unwrap_bool(eval_exp env e2))
    | Operator(Not, e1, e2)    -> Boolean (not(unwrap_bool(eval_exp env  e1)))
    | Readint                  -> failwith "Readint evaluation undefined"
    | Printint n               -> printf "%d\n" (unwrap_int (eval_exp env n)); eval_exp env n
    | Application(Identifier f, e)->
        if Hashtbl.mem function_list f
        then
            try
                let memo_result = Hashtbl.find memoisations (f,e) in
                printf ("Memoised result\n");
                memo_result
            with
             | Not_found ->
                       let Fundef(name, params, body) = Hashtbl.find function_list f in
                       let env' = eval_params env params e in
                       let result = eval_exp env' body in
                       Hashtbl.add memoisations (name, e) result;
                       result
        else
            failwith "No such function."
 	  | Deref exp                -> (match eval_exp env exp with
            | String x             -> find x env
            | _                    -> failwith "Tried to dereference non-identifier")
    | Let(s,e1,e2)             -> let v1 = eval_exp env e1 in eval_exp ((s, v1)::env) e2
    | New(s,e1,e2)             ->
		    let v1 = eval_exp env e1 in
		    let l = newref() in
		    let v2 = Hashtbl.add store (string_of_int l) v1;    eval_exp ((s, Pointer l)::env) e2 in
		    Hashtbl.remove store (string_of_int l); v2

    | _                        -> failwith "Undefined evaluation"
and eval_params env expected_params actual_params  = match (expected_params, actual_params) with
    | ([], [])           -> env
    | ([x],[y])          ->
        let v1 = eval_exp env y in
        ((x, v1)::env)
    | ((x::xs), (y::ys)) ->
        let v1 = eval_exp env y in
        eval_params ((x,v1)::env) xs ys
    | _,_ -> failwith "Incorrect number of parameters"
and eval_fundef env (Fundef(name,params,body)) =  eval_exp env body

let rec add_functions = function
    | [] -> ()
    | (Fundef(name,params,body))::xs -> Hashtbl.add function_list name (Fundef (name, params, body))

(* Since a program is a list of functions, this loops through the list of functions in the file and evaluates them *)
let rec eval_prog = function
     | []         -> []
     | x::xs      -> add_functions  (x::xs);
       match x with
          | Fundef(n,p,b) -> (eval_fundef [] (Fundef(n,p,b))) :: eval_prog xs
