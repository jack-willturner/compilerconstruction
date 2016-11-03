open Ast
open Parser
open Lexer
open Lexing
open Printf
open Optimiser

let rec read_to_empty buf =
	let s = read_line () in
	if s = "" then buf
	else (Buffer.add_string buf s;
		  Buffer.add_string buf "\n";
		  read_to_empty buf)

let to_string = function
    | String s -> s
    | Int i    -> string_of_int i
    | Boolean b -> string_of_bool b
    | Empty -> ""
    | Pointer x -> string_of_int x


let _ =
	read_to_empty (Buffer.create 1)
	|> Buffer.contents
	|> Lexing.from_string
	|> Parser.top Lexer.read
	|> Optimiser.optimise_prog
	|> List.map Ast.function_string
	|> String.concat " "
  |> print_string
  |> print_newline
