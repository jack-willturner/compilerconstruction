default: src/optimiser_test.native

run_all: 
	ocamlbuild -use-menhir -use-ocamlfind src/parser_test.native
	./parser_test.native
	ocamlbuild -use-menhir -use-ocamlfind src/optimiser_test.native
	./optimiser_test.native

%.native:
	eval `opam config env`
	ocamlbuild -use-menhir -use-ocamlfind $@
	./$@.native
