open Interpreter
open Ast
open Printf
open Buffer

let code = Buffer.create 100

let string_of_operator = function
    | Plus ->  "add"
    | Minus -> "sub"
    | Times -> "mult"
    | Divide -> "div"

let codegen_op (op, addr1, addr2) =
    (string_of_operator op)
    ^ " r" ^ (string_of_int addr1)
    ^ ", r" ^ (string_of_int addr2)
    ^ "\n" |> Buffer.add_string code

let codegen_st addr = "st  r" ^ (string_of_int addr)
                      ^ "\n" |> Buffer.add_string code

let codegen_ldc n = "ld  " ^ (string_of_int n)
                    ^ "\n" |> Buffer.add_string code

let rec codegen symt = function
  | Operator(op, e1, e2) ->
      let addr1 = codegen symt e1 in
      let addr2 = codegen symt e2 in
      codegen_op (op, addr1, addr2);
      let addr3 = new_addr () in
      st addr3;
      addr3
  | Identifier x -> lookup x symt
  | Const n ->
      let addr = new_addr () in
      codegen_ldc n;
      codegen_st addr;
      addr
  | Let(x, e1, e2) ->
      let addr1 = codegen symt e1 in
      codegen ((x,addr1)::symt) e2

let main =
  acc := 0;
  Buffer.reset code;
  let addr = codegen [] let_x in
  Buffer.output_buffer stdout code;
  "ld  r" ^ (string_of_int addr) |> print_endline

let _ =
  main;;
