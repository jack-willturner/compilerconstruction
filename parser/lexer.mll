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

let int = '-'? ['0'-'9'] ['0'-'9']*
let digit = ['0'-'9']
let frac = '.' digit*
let exp = ['e' 'E'] ['-' '+']? digit+
let float = digit* frac? exp?

let white = [' ' '\t']+
let newline = '\r' | '\n' | "\r\n"
let id = ['a'-'z' 'A'-'Z' '_'] ['a'-'z' 'A'-'Z' '0'-'9' '_']*

let letter = ['a'-'z' 'A'-'Z']
let id = letter+ digit*

rule read =
	parse
	| white 	{ read lexbuf }
	| newline 	{ read lexbuf }
	| int 		{ INT (int_of_string (Lexing.lexeme lexbuf)) }
	| id 	 	{ STRING (Lexing.lexeme lexbuf) }
	| '+' 		{ PLUS }
	| '*' 		{ TIMES }
	| '/' 		{ DIV }
	| '-'		{ MINUS }
	| ';'		{ SEMIC }
	| ':'		{ COLON }
	| "and" 	{ AND }
	| "or" 		{ OR }
	| "not"		{ NOT }
	| "<="		{ LEQ }
	| ">=" 		{ GEQ }
	| "=="		{ EQUAL }
	| '('	 	{ LPAREN }
	| ')'		{ RPAREN }
	| '{'		{ LBRACE }
	| '}'		{ RBRACE }
	| ":="		{ ASSIGN }
	| "->" 		{ DEF }
	| "let"		{ LET }
	| "in"		{ IN }
	| "do" 		{ DO }
	| "if"		{ IF }
	| "else"	{ ELSE }
	| '!'		{ EXCLAMATION}
	| "while"	{ WHILE }
	| "new"		{ NEW }
	| '.'		{ FULLSTOP }
	| ','       { COMMA }
	| "read_int" { READINT }
	| _ 		{ raise (SyntaxError ("Unexpected char: " ^
                     Lexing.lexeme lexbuf)) }
	| eof 		{ EOF }
