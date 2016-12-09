exception Error

type token = 
  | WHILE
  | TIMES
  | STRING of (string)
  | SEMIC
  | RSQUARE
  | RPAREN
  | READINT
  | RBRACE
  | PRINTINT
  | PLUS
  | OR
  | NOTEQUAL
  | NOT
  | NEW
  | MINUS
  | LSQUARE
  | LPAREN
  | LET
  | LEQ
  | LBRACE
  | INT of (int)
  | IN
  | IF
  | GEQ
  | FULLSTOP
  | FOR
  | EXCLAMATION
  | EQUAL
  | EOF
  | ELSE
  | DIV
  | COMMA
  | COLON
  | ASSIGN
  | ARROW
  | AND


val top: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (Ast.program)