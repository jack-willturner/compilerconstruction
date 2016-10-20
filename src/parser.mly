%{ open Ast %}

%token  <int>       INT
%token  <string>    STRING

%token              PLUS MINUS TIMES DIV
%token              LEQ GEQ EQUAL NOTEQUAL
%token              AND OR NOT
%token 				COLON

%token              LET NEW WHILE IF ASSIGN ELSE PRINTINT READINT EXCLAMATION FULLSTOP IN

%token              LPAREN RPAREN SEMIC LBRACE RBRACE COMMA

%token              EOF

%left               SEMIC
%right              ASSIGN
%left               OR
%left               AND
%right              EQUAL NOTEQUAL
%right              PRINTINT 
%left               LEQ GEQ
%left               PLUS MINUS
%left               TIMES DIV
%right              EXCLAMATION
%right              NOT
%left               IN
%right              LPAREN

%start <Ast.program> top

%%

exp:
    | e = params                                                                      { e }
    | e = INT                                                                         { Const e }
    | e = STRING                                                                      { Identifier e }
    | e = exp;    LPAREN; el = separated_list(COMMA, exp); RPAREN;                    { Application (e, el) }
    | e = exp;    o = operator;   f = exp                                             { Operator (o, e, f) }
    | NOT;        e = exp                                                             { Operator (Not, Empty, e) }
    | e = exp;    ASSIGN;         f = exp                                             { Asg (e, f) }
    | e = exp;    SEMIC;      	  f = exp                                             { Seq(e, f) }
    | IF; p = params; LBRACE; e = exp; RBRACE; ELSE; LBRACE; f = exp; RBRACE;         { If (p, e, f) }
    | WHILE;      p = params; LBRACE; e = exp; RBRACE;                                { While (p, e) }
    | EXCLAMATION; e = exp                                                            { Deref e }
    | PRINTINT;   e = exp                                                             { Printint e }
    | READINT;  			                                                          { Readint }
    | LET; x = STRING; ASSIGN; e = exp; IN; f = exp;                               { Let(x,e,f) }
    | NEW; x = STRING; ASSIGN; e = exp; IN; f = exp;                               { New(x,e,f) };;


params:
  | LPAREN; e = exp; RPAREN; { e };;

%inline operator:
  | PLUS     { Plus }
  | MINUS    { Minus }
  | TIMES    { Times }
  | DIV      { Divide }
  | LEQ      { Leq }
  | GEQ      { Geq }
  | EQUAL    { Equal }
  | NOTEQUAL { Noteq }
  | AND      { And }
  | OR       { Or };;

fundef :
	| name = STRING; LPAREN; params = separated_list(COMMA, STRING); RPAREN; COLON; e = exp; { (name, params, e) }

top :
	| el = separated_list(FULLSTOP, fundef); EOF { el }