%token <int> INT
%token <float> FLOAT
%token <string> STRING
%token PLUS MINUS TIMES DIV
%token LEQ GEQ EQUAL NOTEQUAL
%token AND OR NOT
%token LPAREN RPAREN
%token COLON
%token COMMA
%token NEWLINE
%token LET
%token DO
%token IF
%token ELSE
%token IN
%token EXCLAMATION
%token WHILE
%token NEW
%token EOF
%token FULLSTOP
%token READINT
%token PRINTINT

%start <Ast.program> top

%%

exp :
	| i = INT 														{ Ast.Const(i) }
	| i = FLOAT 													{ Ast.Const(i) }
	| e = exp; PLUS;   f = exp 						{ Ast.Operator(Plus, e, f) }
	| e = exp; TIMES;  f = exp						{ Ast.Operator(Times, e, f) }
	| e = exp; MINUS;  f = exp						{ Ast.Operator(Minus, e, f) }
	| e = exp; DIV;    f = exp 						{ Ast.Operator(Divide, e, f) }
	| e = exp; LEQ;    f = exp 						{ Ast.Operator(Leq, e, f) }
	| e = exp; GEQ;    f = exp 						{ Ast.Operator(Geq, e, f) }
	| e = exp; EQUAL;  f = exp   					{ Ast.Operator(Equal, e, f) }
	| e = exp; NOTEQUAL; f = exp 					{ Ast.Operator(Noteq, e, f) }
	| e = exp; COLON;  f = exp 						{ Ast.Seq(e, f) }
	| e = exp; AND;    f = exp 						{ Ast.Operator(And, e, f) }
	| e = exp; OR;     f = exp 						{ Ast.Operator(Or, e, f) }
	| e = exp; COLON; EQUAL; f = exp; 		{ Ast.Asg(e, f) }
	| e = exp; RPAREN; f = exp; LPAREN; 	{ Ast.Application(e,f) }
	| name = STRING 											{ Ast.Identifier(name) }
	| NOT; e = exp; 											{ Ast.Operator(Not, e, e) }
	| WHILE; e = exp; DO; f = exp;  			{ Ast.While(e,f) }
	| IF; e = exp; DO; f = exp; ELSE; g = exp;		{ Ast.If(e,f,g) }
	| EXCLAMATION; e = exp; 						{ Ast.Deref(e)  }
	| LET; x = STRING; EQUAL; e = exp; IN; f = exp; { Ast.Let(x,e,f) }
	| NEW; x = STRING; EQUAL; e = exp; IN; f = exp; { Ast.New(x,e,f) }
	| PRINTINT; e = exp;							{ Ast.Printint(e) }
	| READINT; 									 			{ Ast.Readint }

fundef :
	| name = STRING; LPAREN; params = separated_list(COMMA, STRING); RPAREN; COLON; e = exp; { (name, params, e) }

top :
	| el = separated_list(FULLSTOP, fundef); EOF { el }
