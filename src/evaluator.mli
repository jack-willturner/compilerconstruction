open Ast

type return_value =  
	| Empty
	| String of string
	| Int of int
	| Boolean of bool



val eval_exp    : Ast.expression -> return_value
val eval_fundef : Ast.fundef  -> return_value
val eval_prog   : Ast.program -> return_value list