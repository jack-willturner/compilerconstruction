default: codegenx86test.native

%.native:
	eval `opam config env`
	ocamlbuild -use-menhir -use-ocamlfind codegenx86test.native
	./codegenx86test.native
	gcc testout.s
	./a.out
