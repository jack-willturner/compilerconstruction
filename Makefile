default: main

main: src/parser/test.native

test: src/parser/test.native

%.native:
	eval `opam config env`
	ocamlbuild -use-menhir -use-ocamlfind $@
