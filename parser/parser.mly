%token <int> INT
%token <string> STRING
%token PLUS MINUS TIMES DIV
%token LEQ GEQ EQUAL
%token AND OR NOT
%token LPAREN RPAREN
%token LBRACE RBRACE
%token COLON
%token SEMIC
%token COMMA
%token LET
%token ASSIGN
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

%left SEMIC
%left ASSIGN
%right PRINTINT
%left IN
%left OR 			/* low prececedence */
%left AND
%right NOT
%left EQUAL
%left LEQ GEQ
%left PLUS MINUS
%left TIMES DIV
%right LPAREN
%nonassoc COLON
%right EXCLAMATION   /* high precedence */


%start <Ast.program> top

%%

exp :
	| i = INT;                                 { Ast.Const(i) }
	| name = STRING;                           { Ast.Identifier(name) }
	| PRINTINT;  e = exp;                      { Ast.Printint(e) }
	| READINT;                                 { Ast.Readint }
	| e = exp; LPAREN; params = separated_list(COMMA, exp); RPAREN; { Ast.Application(e,params) }
	| e = exp; TIMES;  f = exp;                { Ast.Operator(Ast.Times, e, f) }
	| e = exp; DIV;    f = exp;                { Ast.Operator(Ast.Divide, e, f) }
	| e = exp; PLUS;   f = exp;                { Ast.Operator(Ast.Plus, e, f) }
	| e = exp; MINUS;  f = exp;                { Ast.Operator(Ast.Minus, e, f) }
	| e = exp; LEQ;    f = exp;                { Ast.Operator(Ast.Leq, e, f) }
	| e = exp; GEQ;    f = exp;                { Ast.Operator(Ast.Geq, e, f) }
	| e = exp; EQUAL;  f = exp;                { Ast.Operator(Ast.Equal, e, f) }
	| e = exp; EXCLAMATION; EQUAL; f = exp;    { Ast.Operator(Ast.Noteq, e, f) }
	| e = exp; SEMIC;  f = exp;                { Ast.Seq(e, f) }
	| e = exp; AND;    f = exp;                { Ast.Operator(Ast.And, e, f) }
	| e = exp; OR;     f = exp;                { Ast.Operator(Ast.Or, e, f) }
	| e = exp; ASSIGN; f = exp;                { Ast.Asg(e, f) }
	| NOT; e = exp;                            { Ast.Operator(Ast.Not, e, e) }
	| WHILE; LPAREN; e = exp; RPAREN; LBRACE; f = exp; RBRACE;	{ Ast.While(e,f) }
	| IF; LPAREN; e = exp; RPAREN; LBRACE; f = exp; RBRACE; ELSE; LBRACE; g = exp;	RBRACE;	{ Ast.If(e,f,g) }
	| EXCLAMATION; e = exp; 						{ Ast.Deref(e)  }
	| LET; x = STRING; EQUAL; e = exp; IN; f = exp; { Ast.Let(x,e,f) }
	| NEW; x = STRING; EQUAL; e = exp; IN; f = exp; { Ast.New(x,e,f) }

fundef :
	| name = STRING; LPAREN; params = separated_list(COMMA, STRING); RPAREN; COLON; e = exp; { (name, params, e) }

top :
	| el = separated_list(FULLSTOP, fundef); EOF { el }
