open Ast
open Parser
open Lexer
open Lexing
open Printf
open Optimiser

(*
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


*)

let test_files = ["test/optimiser/test1";"test/optimiser/test2";"test/optimiser/test3";
                  "test/optimiser/test4";"test/optimiser/test5";"test/optimiser/test6";
                  "test/optimiser/test7";"test/optimiser/test8"]

let rec read_to_empty buf in_channel =
	try
		let s = input_line in_channel in
		if s = "" then buf
		else (Buffer.add_string buf s;
			  Buffer.add_string buf "\n";
			  read_to_empty buf in_channel)
	with End_of_file ->
		close_in in_channel; buf

let print_position lexbuf =
  let pos = lexbuf.lex_curr_p in
  eprintf "Line: %d, File: %d, Position: %d\n" !Lexer.lineno pos.pos_bol pos.pos_cnum

let parse_with_error lexbuf =
  try Parser.top Lexer.read lexbuf with
  | SyntaxError msg  -> prerr_string (msg ^ ": ");
                       print_position lexbuf;
                       exit (-1)
  | Parser.Error   ->  prerr_string "Parse error: ";
                       print_position lexbuf;
                       exit (-1)

let run_test filename =
	let in_channel = open_in filename in
	let parse_tree =
	read_to_empty (Buffer.create 1) in_channel
	|> Buffer.contents
	|> Lexing.from_string
	|> parse_with_error  in
  let optimised_tree = Optimiser.optimise_prog parse_tree in
	printf "Optimised %s from size %i to size %i\n" filename (size_of_prog parse_tree) (size_of_prog optimised_tree)

let main = List.map run_test test_files

let _ = main ; print_string "All tests passed! \n"
