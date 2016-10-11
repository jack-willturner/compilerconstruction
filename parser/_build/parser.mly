%token <int> INT
%token <string> STRING 
%token PLUS MINUS TIMES DIV
%token LEQ GEQ EQUAL NOTEQUAL
%token AND OR NOT
%token LPAREN RPAREN
%token COLON
%token LET
%token DO
%token IN
%token EXCLAMATION
%token WHILE
%token NEW
%token EOF 
%token FULLSTOP

%start <Ast.program> top

%%

top : 
	| el = separated_list(FULLSTOP, exp); EOF { el }

exp : 
	| i = INT 						{ Const(i) }
	| e = exp; PLUS;   f = exp 		{ Operator(Plus, e, f) }
	| e = exp; TIMES;  f = exp		{ Operator(Times, e, f) }
	| e = exp; MINUS;  f = exp		{ Operator(Minus, e, f) }
	| e = exp; DIV;    f = exp 		{ Operator(Divide, e, f) } 
	| e = exp; AND;    f = exp 		{ Operator(And, e, f) } 
	| e = exp; OR;     f = exp 		{ Operator(Or, e, f) } 
	| NOT; e = exp; 				{ Operator(Not, e, e) }
	| e = exp; LEQ;    f = exp 		{ Operator(Leq, e, f) }
	| e = exp; GEQ;    f = exp 		{ Operator(Geq, e, f) }
	| e = exp; EQUAL;  f = exp   	{ Operator(Equal, e, f) }
	| e = exp; NOTEQUAL; f = exp 	{ Operator(Noteq, e, f) }
	| e = exp; COLON; f = exp 		{ Seq(e, f) }
	| WHILE; e = exp; DO; f = exp;  { While(e,f) }
	| e = exp; COLON; EQUAL; f = exp; { Asg(e, f) }
	| EXCLAMATION; e = exp; 		{ Deref(e) }
	| e = exp; RPAREN; f = exp; LPAREN; { Application(e,f) }
	| name = STRING 				{ Identifier(name) }
	| LET; x = exp; EQUAL; e = exp; IN; f = exp; { Let(x,e,f) }
	| NEW; x = exp; EQUAL; e = exp; IN; f = exp; { New(x,e,f) }


