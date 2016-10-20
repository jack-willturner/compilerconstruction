default: full_test 

full_test: /test/full_test.native

parser_test: /test/parser/test.native

evaluator_test: /test/parser/test.native

%.native:
	eval `opam config env`
	ocamlbuild -use-menhir -use-ocamlfind $@
