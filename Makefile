default: src/codegen.native

%.native:
	eval `opam config env`
	ocamlbuild -use-menhir -use-ocamlfind src/parser_test.native
	./parser_test.native
	ocamlbuild -use-menhir -use-ocamlfind src/optimiser_test.native
	./optimiser_test.native
	ocamlbuild -use-menhir -use-ocamlfind src/interpreter.native
	./interpreter.native
	ocamlbuild -use-menhir -use-ocamlfind src/codegen.native
	./codegen.native


