type opcode =
  | Plus | Minus | Times | Divide
  | Leq | Geq | Equal | Noteq
  | And | Or | Not

(* Variant of the possible return types of a function *)
type return_value =
  | Empty
  | String of string
  | Int of int
  | Boolean of bool
  | List of return_value list
  | Pointer of int

type expression =
  | Empty
  | Seq of expression * expression (* e; e *)
  | While of expression * expression (* while e do e *)
  | For of int * int * expression (* for i do exp *)
  | If of expression * expression * expression (* if e do e else e *)
  | Asg of expression * expression (* e := e *)
  | Deref of expression (* !e *)
  | Operator of opcode * expression * expression (* e + e *)
  | Application of expression * expression list(* e(e) *)
  | Array of expression list (* [1,2,3] *)
  | ArrayAccess of string * expression (* x[e] *)
  | Const of int (* 7 *)
  | Readint (* read_int () *)
  | Printint of expression (* print_int (e) *)
  | Identifier of string (* x *)
  | Let of string * expression * expression (* let x = e in e *)
  | New of string * expression * expression (* new x = e in e *)

type fundef = Fundef of string * string list * expression

type program = fundef list


let opcode_string = function
  | Plus -> "Plus"
  | Minus -> "Minus"
  | Times -> "Times"
  | Divide -> "Divide"
  | Leq -> "Leq"
  | Geq -> "Geq"
  | Equal -> "Equal"
  | Noteq -> "Noteq"
  | And -> "And"
  | Or -> "Or"
  | Not -> "Not"


let rec exp_string = function
  | Empty -> "empty"
  | Seq (e, f) -> "Seq ( " ^ exp_string e ^ "; " ^ exp_string f ^ " ) "
  | While (e, f) -> "While ( " ^ exp_string e ^ " ) { " ^ exp_string f ^ " } "
  | If (e, f, g) -> "If ( " ^ exp_string e ^ " ) { " ^ exp_string f ^ " } Else { " ^ exp_string g ^ " } "
  | Deref e -> "Deref (" ^ exp_string e ^ ")"
  | Operator (Not, Empty, e) -> "Operator ( Not, " ^ exp_string e ^ " ) "
  | Operator (op, e, f) -> "Operator ( " ^ opcode_string op ^ ", " ^ exp_string e ^ ", " ^ exp_string f ^ " ) "
  | Const i -> "Const " ^ string_of_int i
  | Readint -> "Readint () "
  | Printint e -> "Printint ( " ^ exp_string e ^ " ) "
  | Identifier s -> "\"" ^ s ^ "\""
  | Let (s, e, f) -> "Let ( \"" ^ s ^ "\" = " ^ exp_string e ^ " ) In { " ^ exp_string f ^ " } "
  | New (s, e, f) -> "New ( \"" ^ s ^ "\" = " ^ exp_string e ^ " ) In { " ^ exp_string f ^ " } "

let function_string = function
  | Fundef(name, args, body) -> name ^ " ( " ^ String.concat ", " args  ^ " ) { " ^ exp_string body ^ " }"
