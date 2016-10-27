open Printf
open Ast

let addr_gbl = ref 0
let newref() = addr_gbl:=!addr_gbl+1; !addr_gbl

let function_list = Hashtbl.create 5 (* List to keep track of the functions and params *)


(* Variant of the possible return types  of a function *)
type return_value =  
	| Empty
	| String of string
	| Int of int
	| Boolean of bool

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

let rec find y = function
    | [] -> failwith "fail in find: Not Found."
    | (x,x')::xs -> if x = y then x' else find y xs

let rec delete y = function
    | [] -> []
    | (x,x')::xs ->  if x = y then delete y xs else (x,x')::(delete y xs)

let rec replace y y' = function
    | [] -> []
    | (x,x')::xs -> if x = y then (x, y')::xs else (x,x')::(replace y y' xs)

let rec update x v = function
    | [] -> failwith "Not found"
    | (y, z)::ys  when x = y      -> (y, v)::ys
    | y::ys                       -> update x v ys

(* val eval_exp: Ast.expression -> return_value *)
let rec eval_exp env store = function
    | Ast.Empty                -> Empty        (* The empty expression *)
    | Const x                  -> Int x
    | Asg(Identifier x, e2)    -> 
            let v1 = eval_exp env store e2 in 
            update x v1 env; v1(* only mutable variables in store can be assigned to *)
    | While(e1, e2)            -> 
            while unwrap_bool(eval_exp env store e1) do eval_exp env store e2 done; Empty
    | If(e1, e2, e3)           -> 
            if unwrap_bool(eval_exp env store e1) then eval_exp env store e2 else eval_exp env store e3
    | Seq(e1, e2)              -> 
           let _  = eval_exp env store e1 in (* both operations may update the store *)
           let v2 = eval_exp env store e2 in 
           v2
    | Identifier x             -> find x env
    | Deref exp                -> (eval_exp env store exp)
    | Operator(Plus, e1, e2)   -> Int (unwrap_int(eval_exp env store e1) + unwrap_int(eval_exp env store e2))   (* Basic operations *)
    | Operator(Minus, e1, e2)  -> Int (unwrap_int(eval_exp env store e1) - unwrap_int(eval_exp env store e2))
    | Operator(Times, e1, e2)  -> Int (unwrap_int(eval_exp env store e1) * unwrap_int(eval_exp env store e2))
    | Operator(Divide, e1, e2) -> Int (unwrap_int(eval_exp env store e1) / unwrap_int(eval_exp env store e2))
    | Operator(Leq, e1, e2)    -> Boolean (lequal (eval_exp env store e1, eval_exp env store e2))
    | Operator(Geq, e1, e2)    -> Boolean (gequal (eval_exp env store e1, eval_exp env store e2))
    | Operator(Noteq, e1, e2)  -> Boolean (noteq (eval_exp env store e1, eval_exp env store e2))
    | Operator(Equal, e1, e2)  -> Boolean (equal (eval_exp env store e1, eval_exp env store e2))
    | Operator(And, e1, e2)    -> Boolean (unwrap_bool(eval_exp env store e1) &&  unwrap_bool(eval_exp env store e2))
    | Operator(Or, e1, e2)     -> Boolean (unwrap_bool(eval_exp env store e1) ||  unwrap_bool(eval_exp env store e2))
    | Operator(Not, e1, e2)    -> Boolean (not(unwrap_bool(eval_exp env store e1)))
    | Readint                  -> failwith "Readint evaluation undefined"
    | Printint n               -> printf "%d\n" (unwrap_int (eval_exp env store n)); eval_exp env store n
    | Let(s,e1,e2)             -> 
        let v1 = eval_exp env store e1 in 
        eval_exp ((s,v1)::env) store e2
    | New(s,e1,e2)            -> 
        let v1 = eval_exp env store e1 in 
        let l = newref() in 
        let v2 = Hashtbl.add store (string_of_int l) v1; 
        eval_exp ((s, v1)::env) store e2 in 
        Hashtbl.remove store (string_of_int l);
        v2
    | Application(Identifier f, act_params)-> 
        let (Fundef(n,exp_params,b)) = Hashtbl.find function_list f in 
        let e1 = List.hd act_params in 
        let v1 = eval_exp env store e1 in 
        let s1 = List.hd exp_params in 
        eval_fundef ((s1,v1)::env) store (Fundef(n,exp_params,b))
    | _                        -> failwith "Undefined evaluation"
and eval_params env store expected_params actual_params  = match (expected_params, actual_params) with 
    | ([x],[y])          -> 
        let v1 = eval_exp env store y in 
        ((x, v1)::env)
    | ((x::xs), (y::ys)) ->
        let v1 = eval_exp env store y in 
        eval_params ((x,v1)::env) store xs ys
    | _,_ -> failwith "Incorrect number of parameters" 
and eval_fundef env store (Fundef(name,params,body)) = eval_exp env store body


let rec add_functions = function
    | [] -> ()
    | (Fundef(name,params,body))::xs -> Hashtbl.add function_list name (Fundef (name, params, body))



(* Since a program is a list of functions, this loops through the list of functions in the file and evaluates them *)
let rec eval_prog = function
     | []         -> []
     | x::xs      -> add_functions  (x::xs);
       match x with 
          | Fundef(n,b,p) -> let store = Hashtbl.create 64 in 
                       (eval_fundef [] store (Fundef(n,b,p))) :: eval_prog xs





(*

open Printf;;
open Ast;;

let function_list = Hashtbl.create 5;; (* List to keep track of the functions and params *)

(* Variant of the possible return types  of a function *)
type return_value =  
	| Empty
	| String of string
	| Int of int
	| Boolean of bool;;

let store = Hashtbl.create 100;; (* Hashtable containing all of the stored variables *)

let unwrap_bool = function 
    | Boolean b -> b
    | _ -> failwith "Attempted to unwrap non-bool";;

let unwrap_int = function 
    | Int n -> n
    | _ -> failwith "Attempted to unwrap non-int";;

let unwrap_string = function
    | String str -> str
    | _ -> failwith "Attempted to unwrap non-string";;


(* Translation functions *)
let lequal = function
    | Int x, Int y             -> x <= y
    | _, _ -> failwith "Attempted <= on non-integer expressions";;

let gequal = function
    | Int x, Int y             -> x >= y
    | _, _ -> failwith "Attempted >= on non-integer expressions";;

let noteq = function
    | Int x, Int y             -> x <> y
    | _, _ -> failwith "Attempted <> on non-integer expressions";;

(* Structural equality test *)
let equal = function
    | Int x, Int y  -> x == y
    | String s1, String s2 -> s1 == s2
    | Boolean b1, Boolean b2 -> b1 == b2
    | _ , Empty -> false 
    | Empty, _ -> false;;


(* Logical operation unwrapping the Boolean type *)
let r_and = function
    | Boolean b1, Boolean b2  -> b1 && b2
    | _, _ -> failwith "Attempted AND on non-boolean expressions";;

let r_or = function
    | Boolean b1, Boolean b2 -> b1 || b2 
    | _, _ -> failwith "Attempted OR on non-boolean expressions";;

let r_not = function
    | Boolean b1, _ -> not b1
    | _, _ -> failwith "Attempted NOT on non-boolean expressions";;

let rec find y = function
    | [] -> failwith "not found"
    | (x,x')::xs -> if x = y then x' else find y xs

let rec delete y = function
    | [] -> []
    | (x,x')::xs -> if x = y then delete xs else (x,x')::(delete xs)

let rec replace y y' = function
    | [] -> []
    | (x,x')::xs -> if x = y then (x, y')::xs else (x,x')::(replace y y' xs)

(* val eval_exp: Ast.expression -> return_value *)
let rec eval_exp env store = function
    | Ast.Empty                -> Empty        (* The empty expression *)
    | Const x                  -> Int x
    | Asg(Identifier x, e2)    -> 
            let v2 = eval_exp env store e2 in 
            Hashtbl.replace store x v2;
            Hashtbl.replace env x v2; v2 (* only mutable variables in store can be assigned to *)
    | While(e1, e2)            -> 
            while unwrap_bool(eval_exp env store e1) do eval_exp env store e2 done; Empty
    | If(e1, e2, e3)           -> 
            if unwrap_bool(eval_exp env store e1) then eval_exp env store e2 else eval_exp env store e3
    | Seq(e1, e2)              -> 
           let _  = eval_exp env store e1 in (* both operations may update the store *)
           let v2 = eval_exp env store e2 in 
           v2
    | Identifier x             -> Hashtbl.find env x 
    | Deref exp                -> (eval_exp env store exp)
    | Operator(Plus, e1, e2)   -> Int (unwrap_int(eval_exp env store e1) + unwrap_int(eval_exp env store e2))   (* Basic operations *)
    | Operator(Minus, e1, e2)  -> Int (unwrap_int(eval_exp env store e1) - unwrap_int(eval_exp env store e2))
    | Operator(Times, e1, e2)  -> Int (unwrap_int(eval_exp env store e1) * unwrap_int(eval_exp env store e2))
    | Operator(Divide, e1, e2) -> Int (unwrap_int(eval_exp env store e1) / unwrap_int(eval_exp env store e2))
    | Operator(Leq, e1, e2)    -> Boolean (lequal (eval_exp env store e1, eval_exp env store e2))
    | Operator(Geq, e1, e2)    -> Boolean (gequal (eval_exp env store e1, eval_exp env store e2))
    | Operator(Noteq, e1, e2)  -> Boolean (noteq (eval_exp env store e1, eval_exp env store e2))
    | Operator(Equal, e1, e2)  -> Boolean (equal (eval_exp env store e1, eval_exp env store e2))
    | Operator(And, e1, e2)    -> Boolean (unwrap_bool(eval_exp env store e1) &&  unwrap_bool(eval_exp env store e2))
    | Operator(Or, e1, e2)     -> Boolean (unwrap_bool(eval_exp env store e1) ||  unwrap_bool(eval_exp env store e2))
    | Operator(Not, e1, e2)    -> Boolean (not(unwrap_bool(eval_exp env store e1)))
    | Readint                  -> failwith "Readint evaluation undefined"
    | Printint n               -> printf "%d\n" (unwrap_int (eval_exp env store n)); eval_exp env store n
    | Let(s,e1,e2)            -> 
        let v1 = eval_exp env store e1 in 
        Hashtbl.add env s v1;
        eval_exp env store e2
    | New(s,e1,e2)            -> 
        let v1 = eval_exp env store e1 in 
        Hashtbl.add store s v1;
        Hashtbl.add env s v1;
        eval_exp env store e2 
    | Application(func, params)-> (*
        let func' = unwrap_string(eval_exp env store func) in
        let params' = List.map (eval_exp env store) params in
        let params'' = List.map unwrap_string params' in
        let (expected_params, body) = Hashtbl.find function_list func' in 
        if ((List.length expected_params) = (List.length params)) 
        then 
           let store' = eval_params env store expected_params params in 
           let f = Fundef(func', params'', body) in
           eval_fundef f env store
        else failwith "Insufficient parameters provided" *)
        failwith "Application not yet implemented"
    | _                        -> failwith "Undefined evaluation"
and eval_params env store expected_params actual_params  = match (expected_params, actual_params) with 
    | ([x],[y]) -> 
          let v1 = eval_exp env store y in 
          Hashtbl.add store x v1 
    | ((x::xs), (y::ys)) -> 
          let v1     = eval_exp env store y in 
          Hashtbl.add store x v1; 
          eval_params env store xs ys
    | _,_ -> failwith "Incorrect number of parameters"
and eval_fundef (name,params,body) env store = 
    eval_exp env store body;;

(*
let rec add_functions env store = function
    | [] -> ()
    | (name,params,body)::xs -> Hashtbl.add function_list "name" params
*)

let rec eval_fundef env store (name, params, exp) = 
    eval_exp env store exp;;

(* Since a program is a list of functions, this loops through the list of functions in the file and evaluates them *)
let rec eval_prog = function
     | []         -> []
     | x::xs      -> 
         let env = Hashtbl.create 64 in 
         let store = Hashtbl.create 64 in 
         eval_fundef env store x :: eval_prog xs;;


*)






