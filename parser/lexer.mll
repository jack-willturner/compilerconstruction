{ 
open Lexing
open Parser

exception SyntaxError of string

let next_line lexbuf = 
	let pos = lexbuf.lex_curr_p in
  lexbuf.lex_curr_p <-
    { pos with pos_bol = lexbuf.lex_curr_pos;
               pos_lnum = pos.pos_lnum + 1
    }
}

(* part 1 *)
let int = '-'? ['0'-'9'] ['0'-'9']*

(* part 2 *)
let digit = ['0'-'9']
let frac = '.' digit*
let exp = ['e' 'E'] ['-' '+']? digit+
let float = digit* frac? exp?

(* part 3 *)
let white = [' ' '\t']+
let newline = '\r' | '\n' | "\r\n"
let id = ['a'-'z' 'A'-'Z' '_'] ['a'-'z' 'A'-'Z' '0'-'9' '_']*


rule read = 
	parse 
	| white 	{ read lexbuf }
	| newline 	{ read lexbuf }
	| int 		{ INT (int_of_string (Lexing.lexeme lexbuf)) }
	| '+' 		{ PLUS }
	| '*' 		{ TIMES }
	| '/' 		{ DIV }
	| '-'		{ MINUS }
	| "and" 	{ AND }
	| "or" 		{ OR }
	| "not"		{ NOT }
	| "<="		{ LEQ }
	| ">=" 		{ GEQ }
	| "=="		{ EQUAL }
	| "!="		{ NOTEQUAL }
	| _ 		{ raise (SyntaxError ("Unexpected char: " ^
                     Lexing.lexeme lexbuf)) }
	| eof 		{ EOF }


