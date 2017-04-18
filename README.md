# Running the tests: 
``` 
eval `opam config env`
ocamlbuild -use-menhir -use-ocamlfind codegenx86test.native
./codegenx86test.native
gcc testout.s
./a.out
```

## Syntax
```
function :      function name ( parameters ) : expressions
operation :     expression operator expression
assignment :    expression := expression
let expression = expression in expression
new expression = expression in expression

operators:
+, -, /, *, <=, >=, ==
```

Operations can be sequenced together with a semicolon (e.g. `expression ; expression`)

