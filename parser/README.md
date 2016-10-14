# Assignment 1: Parsing
## Running the tests
Once you have downloaded the files, move into the parsing directory and run `ocamlbuild -use-menhir -use-ocamlfind test.native`.
You can then run `./test.native` to run the tests.
If you want to alter the tests they can be changed in their `.txt` files.

## Adding new tests
Create the `.txt` file with your new program in it and put it in one of the test directories. Then add the filepath to the `test_files` list in `test.ml`.
