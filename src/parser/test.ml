open Lexing
open Lexer
open Printf
open Ast

let test_files = ["small_tests/test1.txt";"small_tests/test2.txt";"small_tests/test3.txt";"small_tests/test4.txt";
                  "small_tests/test5";"big_tests/iter_bisect";"big_tests/rec_bisect" ]

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

let main filename =
	let in_channel = open_in filename in
	read_to_empty (Buffer.create 1) in_channel
	|> Buffer.contents
	|> Lexing.from_string
	|> parse_with_error (*
	|> List.map Ast.function_string
	|> String.concat " "
    |> print_string
    |> print_newline *)

let rec map_with_print f ls =
	match ls with
	| [] 		-> []
	| x::xs 	-> printf "Parsing %s\n" x;
				   f x :: map_with_print f xs

let _ = map_with_print main test_files ; print_string "All tests passed! \n"


(* makefile *)
