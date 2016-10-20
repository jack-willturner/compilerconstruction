default: src/eval_test.native

%.native:
	eval `opam config env`
	ocamlbuild -use-menhir -use-ocamlfind $@
	./eval_test.native
