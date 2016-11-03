# Running the tests
Just run `make` to run the latest set of tests. This will build the parser and optimiser and run the test programs through both. Use the tag `run_all` to run all of the previous tests.


# Assignment 1: Parsing
## Adding new tests
Create the `.txt` file with your new program in it and put it in one of the test directories. Then add the filepath to the `test_files` list in `test.ml`.

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

# Assignment 2: Evaluator
The evaluator covers the simple imperative subset of the language, allowing for expression evaluation, loops, if statements and dereferencing. All variables are treated as global. 

# Assignment 4: Optimiser
The optimiser handles constant folding, constant propagation for let statements (but not new statements) and function inlining. To print out the changes in the parse tree, you can run './topleveltest.native' for use as REPL. 
