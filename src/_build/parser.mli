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
  | NOTEQUAL
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
  | DIV
  | COMMA
  | COLON
  | ASSIGN
  | AND


val top: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (Ast.program)