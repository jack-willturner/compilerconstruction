exception Error

type token = 
  | WHILE
  | TIMES
  | STRING of (string)
  | SEMIC
  | RPAREN
  | READINT
  | RBRACE
  | PRINTINT
  | PLUS
  | OR
  | NOT
  | NEW
  | MINUS
  | LPAREN
  | LET
  | LEQ
  | LBRACE
  | INT of (int)
  | IN
  | IF
  | GEQ
  | FULLSTOP
  | EXCLAMATION
  | EQUAL
  | EOF
  | ELSE
  | DO
  | DIV
  | DEF
  | COMMA
  | COLON
  | AND


val top: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (Ast.program)