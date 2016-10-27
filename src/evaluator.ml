(* Variant of the possible return types  of a function *)
open Printf;;
open Ast;;

let function_list = Hashtbl.create 5;; (* List to keep track of the functions and params *)

type return_value =  
	| Empty
	| String of string
	| Int of int
	| Boolean of bool;;

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
    | Empty, _ -> false
    | _, _ -> failwith "Comparing incompatible types";;


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

(* val eval_exp: Ast.expression -> return_value *)
let rec eval_exp env store = function
    | Ast.Empty                -> Empty        (* The empty expression *)
    | Const x                  -> Int x
    | Asg(Identifier x, e2)    -> 
            let v2 = eval_exp env store e2 in 
            Hashtbl.replace env x v2; v2 (* now treat as a local variable *)
    | While(e1, e2)            -> 
            while unwrap_bool(eval_exp env store e1) do eval_exp env store e2 done; Empty
    | If(e1, e2, e3)           -> 
            if unwrap_bool(eval_exp env store e1) then eval_exp env store e2 else eval_exp env store e3
    | Seq(e1, e2)              -> 
           let _  = eval_exp env store e1 in (* both operations may update the store *)
           let v2 = eval_exp env store e2 in 
           v2
    | Identifier x             -> Hashtbl.find store x
    | Deref exp                -> Hashtbl.find env (unwrap_string(eval_exp env store exp))
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
    | Let(s1,e1,e2)            -> 
        let v1 = eval_exp env store e1 in 
        Hashtbl.add store s1 v1;
        eval_exp env store e2
    | New(s1,e1,e2)            -> 
        let v1 = eval_exp env store e1 in 
        Hashtbl.add env s1 v1;
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

let rec add_functions env store = function
    | [] -> ()
    | (name,params,body)::xs -> Hashtbl.add function_list "name" params

(* Since a program is a list of functions, this loops through the list of functions in the file and evaluates them *)
let rec eval_prog = function
     | []         -> Empty
     | x::xs -> 
         let env = Hashtbl.create 100 in 
	     let store = Hashtbl.create 100 in
	     add_functions env store (x::xs);
         eval_fundef x env store;;









