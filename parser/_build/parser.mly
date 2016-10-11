%token <int> INT
%token <float> FLOAT
%token <string> STRING 
%token TRUE
%token FALSE
%token BAR  (* | for pattern matching *)
%token ASSIGN
%token PLUS MINUS TIMES DIV
%token LEQ GEQ EQUAL NOTEQUAL
%token AND OR NOT
%token LPAREN RPAREN
%token EOF 
%token COMMA

%left LEQ                /* lowest precedence */
%left GEQ
%left EQUAL
%left NOTEQUAL
%left AND 
%left OR
%left NOT                 /* highest precedence */
%start <int list> top

%%

top : 
	| el = separated_list(COMMA, exp); EOF { el }

exp : 
	| e = exp; PLUS;   f = exp 		{ e + f }
	| e = exp; TIMES;  f = exp		{ e * f }
	| e = exp; MINUS;  f = exp		{ e - f }
	| e = exp; DIV;    f = exp 		{ e / f } /* 
	| e = exp; AND;    f = exp 		{ e && f } 
	| e = exp; OR;     f = exp 		{ e || f } 
	| e = exp; NOT;    f = exp 		{ !e }
	| e = exp; LEQ;    f = exp 		{ e <= f }
	| e = exp; GEQ;    f = exp 		{ e >= f }
	| e = exp; EQUAL;  f = exp   	{ e == f }
	| e = exp; NOTEQUAL; f = exp 	{ e != f } */