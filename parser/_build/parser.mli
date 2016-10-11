exception Error

type token = 
  | TRUE
  | TIMES
  | STRING of (string)
  | RPAREN
  | PLUS
  | OR
  | NOTEQUAL
  | NOT
  | MINUS
  | LPAREN
  | LEQ
  | INT of (int)
  | GEQ
  | FLOAT of (float)
  | FALSE
  | EQUAL
  | EOF
  | DIV
  | COMMA
  | BAR
  | ASSIGN
  | AND


val top: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (int list)