{
open Lexing
open Parser

exception SyntaxError of string

let lineno = ref 1

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
	| white 	  { read lexbuf }
	| newline 	  { incr lineno; read lexbuf }
	| int 		  { INT (int_of_string (Lexing.lexeme lexbuf)) }
	| '+' 		  { PLUS }
	| '*' 		  { TIMES }
	| '/' 		  { DIV }
	| '-'		  { MINUS }
	| ';'		  { SEMIC }
	| ':'		  { COLON }
	| "and"   	  { AND }
	| "or" 	  	  { OR }
	| "not"		  { NOT }
	| "<="		  { LEQ }
	| ">=" 		  { GEQ }
	| "=="		  { EQUAL }
	| "!="        { NOTEQUAL }
	| '('	 	  { LPAREN }
	| ')'		  { RPAREN }
	| '{'		  { LBRACE }
	| '}'         { RBRACE }
	| ":="		  { ASSIGN }
	| "let"	  	  { LET }
	| "if"		  { IF }
	| "else"	  { ELSE }
	| '!'		  { EXCLAMATION}
	| "while"	  { WHILE }
	| "in"        { IN }
	| "new"	  	  { NEW }
	| "(*"		  { comment lexbuf; read lexbuf}
	| "*)"        { read lexbuf }
	| '.'		  { FULLSTOP }
	| ','         { COMMA }
	| id 	 	  { STRING (Lexing.lexeme lexbuf) }
	| "read_int"  { READINT }
	| "print_int" { PRINTINT }
	| _ 		  { raise (SyntaxError ("Unexpected char: " ^
                     Lexing.lexeme lexbuf)) }
	| eof 		  { EOF }


and comment =
	parse
	| "*)" 			{ () }
	| "\n"			{ incr lineno; comment lexbuf }
	| _ 			{ comment lexbuf }
	| eof 			{ () }
