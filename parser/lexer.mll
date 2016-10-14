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


(* -- Would like to implement this correctly but struggling to get the lookup to fail correctly 

let make_hash n pairs = 
	let t = Hashtbl.create n in 
	List.iter (fun (k,v) -> Hashtbl.add t k v) pairs; t

let keyword_table = 
	make_hash 64
		[ ("and", AND); ("or", OR); ("not", NOT); ("let", LET); ("in", IN); ("do", DO);
		  ("if", IF); ("else", ELSE); ("while", WHILE); ("new", NEW); ("read_int", READINT);
		  ("print_int", PRINTINT)]

let idtable = Hashtbl.create 64

let lookup s = 
	try Hashtbl.find keyword_table s with
		Not_found -> Hashtbl.replace idtable s (); s

let get_identifiers () = 
	Hashtbl.fold (fun k () ks -> k::ks) idtable []

}
*)

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


and comment = 
	parse 
	| "*" 			{ () }
	| "\n"			{ comment lexbuf }
	| _ 			{ comment lexbuf }
	| eof 			{ () }