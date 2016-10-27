open Parser 
open Lexer
open Lexing
open Evaluator
open Printf

let rec read_to_empty buf = 
	let s = read_line () in 
	if s = "" then buf 
	else (Buffer.add_string buf s;
		  Buffer.add_string buf "\n";
		  read_to_empty buf)

let to_string = function
    | Empty -> ""
    | String s -> s
    | Int i    -> string_of_int i
    | Boolean b -> string_of_bool b

(*
let _ = 
	read_to_empty (Buffer.create 1)
	|> Buffer.contents
	|> Lexing.from_string
	|> Parser.top Lexer.read
    |> List.map Ast.function_string
	|> String.concat " "
    |> print_string
    |> print_newline
*)

let _ = 
	read_to_empty (Buffer.create 1)
	|> Buffer.contents
	|> Lexing.from_string
	|> Parser.top Lexer.read
	|> Evaluator.eval_prog
	|> List.hd
	|> to_string
	|> printf "%s\n" 

	