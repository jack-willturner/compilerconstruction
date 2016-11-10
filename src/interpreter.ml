open Hashtbl
open Ast
open Printf

let ram =  Hashtbl.create 100

let acc = ref 0
let addr_base = ref 0

let new_addr() = addr_base := !addr_base + 1; (!addr_base - 1)

let op (op, addr1, addr2) =
    acc := op (find ram addr1) (find ram addr2)

let st addr = replace ram addr !acc
let ldc n = acc := n

let fun_of_op = function
  | Plus    -> (fun x y -> x + y)
  | Minus   -> (fun x y -> x - y)
  | Divide  -> (fun x y -> x / y)
  | Times   -> (fun x y -> x * y)
  | Geq     -> (fun x y -> if (x >= y) then 1 else 0)
  | Leq     -> (fun x y -> if (x <= y) then 1 else 0)
  | Equal   -> (fun x y -> if (x == y) then 1 else 0)
  | Noteq   -> (fun x y -> if (x <> y) then 1 else 0)
  | _ -> failwith "unimplemented operation"


let rec lookup x symt = match symt with
    | [] -> failwith "Not found in symbol table"
    | ((str,addr)::xs) -> if (str = x) then addr else lookup x xs

let rec interpret symt = function
    | Operator(oper, e1, e2) ->
        let addr1 = interpret symt e1 in
        let addr2 = interpret symt e2 in
        op (fun_of_op oper, addr1, addr2);
        let addr3 = new_addr () in
        st addr3;
        addr3
    | Identifier x -> lookup x symt
    | Const n ->
        let addr = new_addr () in
        ldc n;
        st addr;
        addr
    | Let(x, e1, e2) ->
        let addr1 = interpret symt e1 in
        interpret ((x,addr1)::symt) e2
    | If(e1, e2, e3) ->
        let addr1 = interpret symt e1 in
        if((find ram addr1) = 1)
        then interpret symt e2
        else interpret symt e3


(* let x = 30 + 40 in x + x *)
let c1 = Const 30
let c2 = Const 40
let op_plus = Operator (Plus, c1, c2)
let op_plus_x = Operator (Plus, Identifier "x", Identifier "x")
let ret_x = Identifier "x"
let d1 = Operator(Leq, c1, c2)
let if_x = If(d1, Const 5, Const 10)
let let_x = Let ("x", op_plus, op_plus_x)

let _ = addr_base := 0;
        let addr = interpret [] if_x in
        let result = find ram addr in
        printf "\nINTERPRETER TEST \n if(30 <= 40) then 5 else 10 ==> %i \n\n\n" result;
        result
