open Lexing
open Lexer
open Printf
open Ast
open Evaluator


(* This file compiles and tests both the parser and the evaluator *)


let fileno = ref 0

let test_files = [("../test/evaluator2/test5", 7)]

let rec read_to_empty buf in_channel =
	Lexer.lineno := 1;
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
  eprintf "Line: %d, File: %d, Position: %d\n" !Lexer.lineno !fileno pos.pos_cnum

let unwrap = function
	| Ast.Int x    -> x
	| _        -> 0

let parse_with_error lexbuf =
  try Parser.top Lexer.read lexbuf with
  | SyntaxError msg  -> prerr_string (msg ^ ": ");
                       print_position lexbuf;
                       exit (-1)
  | Parser.Error   ->  prerr_string "Parse error: ";
                       print_position lexbuf;
                       exit (-1)

let run_test (filename, expected_result) =
    fileno := !fileno + 1;
	let in_channel = open_in filename in
	let actual_result =
	read_to_empty (Buffer.create 1) in_channel
	|> Buffer.contents
	|> Lexing.from_string
	|> parse_with_error
	|> Evaluator.eval_prog in
	if (expected_result == (unwrap(List.hd actual_result)))
	then printf "%s passed test!\n" filename
    else printf "%s failed test! Expected %d, actual %d\n" filename expected_result (unwrap(List.hd actual_result))

let main = List.map run_test test_files

let rec map_with_print f ls =
	match ls with
	| [] 		-> []
	| x::xs 	-> printf "Parsing %s\n" x;
				   f x :: map_with_print f xs

let _ = main 
