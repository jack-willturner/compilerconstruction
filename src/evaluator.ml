open Ast
open Printf

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
let plus = function
    | Int x, Int y -> x + y
    | _, _ -> failwith "Attempted addition on non-integer expressions";;

let minus = function
    | Int x, Int y -> x - y
    | _, _ -> failwith "Attempted subtraction on non-integer expressions";;

let times = function
    | Int x, Int y -> x * y
    | _, _ -> failwith "Attempted multiplication on non-integer expressions";;

let divide = function
    | Int x, Int y -> x / y
    | _, _ -> failwith "Attempted division on non-integer expressions";;

let lequal = function
    | Int x, Int y             -> x <= y
    | _, _ -> failwith "Attempted <= on non-integer expressions";;

let gequal = function
    | Int x, Int y             -> x >= y
    | _, _ -> failwith "Attempted >= on non-integer expressions";;

let noteq = function
    | Int x, Int y             -> x <> y
    | _, _ -> failwith "Attempted <> on non-integer expressions";;

let equal = function
    | Int x, Int y  -> x == y
    | String s1, String s2 -> s1 == s2
    | Boolean b1, Boolean b2 -> b1 == b2
    | _ , Empty -> false 
    | Empty, _ -> false;;

let r_and = function
    | Boolean b1, Boolean b2  -> b1 && b2
    | _, _ -> failwith "Attempted AND on non-boolean expressions";;

let r_or = function
    | Boolean b1, Boolean b2 -> b1 || b2 
    | _, _ -> failwith "Attempted OR on non-boolean expressions";;

let r_not = function
    | Boolean b1, _ -> not b1
    | _, _ -> failwith "Attempted NOT on non-boolean expressions";;

(* eval_exp :: expression -> return_value *)
let rec eval_exp = function
    | Ast.Empty                -> Empty
    | Const x                  -> Int x
    | Asg(Identifier x, e2)    -> 
            let v2 = eval_exp e2 in 
            Hashtbl.add store x v2; v2 (* treat as a global variable *)
    | While(e1, e2)            -> 
            while unwrap_bool(eval_exp e1) do eval_exp e2 done; Empty
    | If(e1, e2, e3)           -> 
            if unwrap_bool(eval_exp e1) then eval_exp e2 else eval_exp e3
    | Seq(e1, e2)              -> 
           let _  = eval_exp e1 in (* both operations may update the store *)
           let v2 = eval_exp e2 in 
           v2
    | Identifier x             -> Hashtbl.find store x
    | Operator(Plus, e1, e2)   -> Int (unwrap_int(eval_exp e1) + unwrap_int(eval_exp e2))
    | Operator(Minus, e1, e2)  -> Int (unwrap_int(eval_exp e1) - unwrap_int(eval_exp e2))
    | Operator(Times, e1, e2)  -> Int (unwrap_int(eval_exp e1) * unwrap_int(eval_exp e2))
    | Operator(Divide, e1, e2) -> Int (unwrap_int(eval_exp e1) / unwrap_int(eval_exp e2))
    | Operator(Leq, e1, e2)    -> Boolean (lequal (eval_exp e1, eval_exp e2))
    | Operator(Geq, e1, e2)    -> Boolean (gequal (eval_exp e1, eval_exp e2))
    | Operator(Noteq, e1, e2)  -> Boolean (noteq (eval_exp e1, eval_exp e2))
    | Operator(Equal, e1, e2)  -> Boolean (equal (eval_exp e1, eval_exp e2))
    | Operator(And, e1, e2)    -> Boolean (unwrap_bool(eval_exp e1) &&  unwrap_bool(eval_exp e2))
    | Operator(Or, e1, e2)     -> Boolean (unwrap_bool(eval_exp e1) ||  unwrap_bool(eval_exp e2))
    | Operator(Not, e1, e2)    -> Boolean (not(unwrap_bool(eval_exp e1)))
    | Application(func, params)-> failwith "Application evaluation undefined"
    | Readint                  -> failwith "Readint evaluation undefined"
    | Printint n               -> printf "%d" (unwrap_int (eval_exp n)); Empty
    | Let(s1,e1,e2)            -> failwith "Let undefined"
    | New(s1,e1,e2)            -> failwith "New undefined"
    | _                        -> failwith "Undefined evaluation"



let rec eval_fundef (name, params, exp) = 
    eval_exp exp;;

let rec eval_prog = function
     | []         -> []
     | x::xs      -> eval_fundef x :: eval_prog xs;;



























