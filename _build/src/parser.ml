exception Error

type token = 
  | WHILE
  | TIMES
  | STRING of (string)
  | SEMIC
  | RPAREN
  | READINT
  | RBRACE
  | PRINTINT
  | PLUS
  | OR
  | NOTEQUAL
  | NOT
  | NEW
  | MINUS
  | LPAREN
  | LET
  | LEQ
  | LBRACE
  | INT of (int)
  | IN
  | IF
  | GEQ
  | FULLSTOP
  | EXCLAMATION
  | EQUAL
  | EOF
  | ELSE
  | DIV
  | COMMA
  | COLON
  | ASSIGN
  | AND

and _menhir_env = {
  _menhir_lexer: Lexing.lexbuf -> token;
  _menhir_lexbuf: Lexing.lexbuf;
  mutable _menhir_token: token;
  mutable _menhir_startp: Lexing.position;
  mutable _menhir_endp: Lexing.position;
  mutable _menhir_shifted: int
}

and _menhir_state = 
  | MenhirState86
  | MenhirState77
  | MenhirState70
  | MenhirState67
  | MenhirState63
  | MenhirState58
  | MenhirState56
  | MenhirState54
  | MenhirState52
  | MenhirState50
  | MenhirState48
  | MenhirState46
  | MenhirState44
  | MenhirState42
  | MenhirState40
  | MenhirState38
  | MenhirState36
  | MenhirState34
  | MenhirState29
  | MenhirState26
  | MenhirState25
  | MenhirState23
  | MenhirState21
  | MenhirState18
  | MenhirState15
  | MenhirState14
  | MenhirState11
  | MenhirState10
  | MenhirState9
  | MenhirState4
  | MenhirState2
  | MenhirState0

   open Ast let _eRR =
  Error

let rec _menhir_goto_loption_separated_nonempty_list_COMMA_exp__ : _menhir_env -> 'ttv_tail -> _menhir_state -> (Ast.expression list) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_stack = Obj.magic _menhir_stack in
    assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | RPAREN ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _ = _menhir_discard _menhir_env in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, e), _, xs0) = _menhir_stack in
        let _v : (Ast.expression) = let el =
          let xs = xs0 in
              ( xs )
        in
                                                                                              ( Application (e, el) ) in
        _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        _menhir_env._menhir_shifted <- (-1);
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_goto_separated_nonempty_list_FULLSTOP_fundef_ : _menhir_env -> 'ttv_tail -> _menhir_state -> (Ast.program) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState0 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let x = _v in
        let _v : (Ast.program) =     ( x ) in
        _menhir_goto_loption_separated_nonempty_list_FULLSTOP_fundef__ _menhir_env _menhir_stack _menhir_s _v
    | MenhirState86 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let xs = _v in
        let (_menhir_stack, _menhir_s, x) = _menhir_stack in
        let _v : (Ast.program) =     ( x :: xs ) in
        _menhir_goto_separated_nonempty_list_FULLSTOP_fundef_ _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        _menhir_fail ()

and _menhir_goto_separated_nonempty_list_COMMA_exp_ : _menhir_env -> 'ttv_tail -> _menhir_state -> (Ast.expression list) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState29 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let x = _v in
        let _v : (Ast.expression list) =     ( x ) in
        _menhir_goto_loption_separated_nonempty_list_COMMA_exp__ _menhir_env _menhir_stack _menhir_s _v
    | MenhirState58 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let xs = _v in
        let (_menhir_stack, _menhir_s, x) = _menhir_stack in
        let _v : (Ast.expression list) =     ( x :: xs ) in
        _menhir_goto_separated_nonempty_list_COMMA_exp_ _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        _menhir_fail ()

and _menhir_run34 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.expression) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _tok = _menhir_discard _menhir_env in
    match _tok with
    | EXCLAMATION ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState34
    | IF ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState34
    | INT _v ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState34 _v
    | LET ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState34
    | LPAREN ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState34
    | NEW ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState34
    | NOT ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState34
    | PRINTINT ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState34
    | READINT ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState34
    | STRING _v ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState34 _v
    | WHILE ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState34
    | _ ->
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        _menhir_env._menhir_shifted <- (-1);
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState34

and _menhir_run36 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.expression) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _tok = _menhir_discard _menhir_env in
    match _tok with
    | EXCLAMATION ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState36
    | IF ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState36
    | INT _v ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState36 _v
    | LET ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState36
    | LPAREN ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState36
    | NEW ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState36
    | NOT ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState36
    | PRINTINT ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState36
    | READINT ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState36
    | STRING _v ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState36 _v
    | WHILE ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState36
    | _ ->
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        _menhir_env._menhir_shifted <- (-1);
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState36

and _menhir_run38 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.expression) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _tok = _menhir_discard _menhir_env in
    match _tok with
    | EXCLAMATION ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState38
    | IF ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState38
    | INT _v ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState38 _v
    | LET ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState38
    | LPAREN ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState38
    | NEW ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState38
    | NOT ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState38
    | PRINTINT ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState38
    | READINT ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState38
    | STRING _v ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState38 _v
    | WHILE ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState38
    | _ ->
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        _menhir_env._menhir_shifted <- (-1);
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState38

and _menhir_run42 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.expression) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _tok = _menhir_discard _menhir_env in
    match _tok with
    | EXCLAMATION ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState42
    | IF ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState42
    | INT _v ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState42 _v
    | LET ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState42
    | LPAREN ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState42
    | NEW ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState42
    | NOT ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState42
    | PRINTINT ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState42
    | READINT ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState42
    | STRING _v ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState42 _v
    | WHILE ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState42
    | _ ->
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        _menhir_env._menhir_shifted <- (-1);
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState42

and _menhir_run44 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.expression) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _tok = _menhir_discard _menhir_env in
    match _tok with
    | EXCLAMATION ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState44
    | IF ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState44
    | INT _v ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState44 _v
    | LET ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState44
    | LPAREN ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState44
    | NEW ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState44
    | NOT ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState44
    | PRINTINT ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState44
    | READINT ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState44
    | STRING _v ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState44 _v
    | WHILE ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState44
    | _ ->
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        _menhir_env._menhir_shifted <- (-1);
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState44

and _menhir_run46 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.expression) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _tok = _menhir_discard _menhir_env in
    match _tok with
    | EXCLAMATION ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState46
    | IF ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState46
    | INT _v ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState46 _v
    | LET ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState46
    | LPAREN ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState46
    | NEW ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState46
    | NOT ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState46
    | PRINTINT ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState46
    | READINT ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState46
    | STRING _v ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState46 _v
    | WHILE ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState46
    | _ ->
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        _menhir_env._menhir_shifted <- (-1);
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState46

and _menhir_run48 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.expression) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _tok = _menhir_discard _menhir_env in
    match _tok with
    | EXCLAMATION ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState48
    | IF ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState48
    | INT _v ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState48 _v
    | LET ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState48
    | LPAREN ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState48
    | NEW ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState48
    | NOT ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState48
    | PRINTINT ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState48
    | READINT ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState48
    | STRING _v ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState48 _v
    | WHILE ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState48
    | _ ->
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        _menhir_env._menhir_shifted <- (-1);
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState48

and _menhir_run50 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.expression) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _tok = _menhir_discard _menhir_env in
    match _tok with
    | EXCLAMATION ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState50
    | IF ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState50
    | INT _v ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState50 _v
    | LET ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState50
    | LPAREN ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState50
    | NEW ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState50
    | NOT ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState50
    | PRINTINT ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState50
    | READINT ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState50
    | STRING _v ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState50 _v
    | WHILE ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState50
    | _ ->
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        _menhir_env._menhir_shifted <- (-1);
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState50

and _menhir_run52 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.expression) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _tok = _menhir_discard _menhir_env in
    match _tok with
    | EXCLAMATION ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState52
    | IF ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState52
    | INT _v ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState52 _v
    | LET ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState52
    | LPAREN ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState52
    | NEW ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState52
    | NOT ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState52
    | PRINTINT ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState52
    | READINT ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState52
    | STRING _v ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState52 _v
    | WHILE ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState52
    | _ ->
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        _menhir_env._menhir_shifted <- (-1);
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState52

and _menhir_run40 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.expression) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _tok = _menhir_discard _menhir_env in
    match _tok with
    | EXCLAMATION ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState40
    | IF ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState40
    | INT _v ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState40 _v
    | LET ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState40
    | LPAREN ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState40
    | NEW ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState40
    | NOT ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState40
    | PRINTINT ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState40
    | READINT ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState40
    | STRING _v ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState40 _v
    | WHILE ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState40
    | _ ->
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        _menhir_env._menhir_shifted <- (-1);
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState40

and _menhir_run56 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.expression) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _tok = _menhir_discard _menhir_env in
    match _tok with
    | EXCLAMATION ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState56
    | IF ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState56
    | INT _v ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState56 _v
    | LET ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState56
    | LPAREN ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState56
    | NEW ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState56
    | NOT ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState56
    | PRINTINT ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState56
    | READINT ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState56
    | STRING _v ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState56 _v
    | WHILE ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState56
    | _ ->
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        _menhir_env._menhir_shifted <- (-1);
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState56

and _menhir_run54 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.expression) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _tok = _menhir_discard _menhir_env in
    match _tok with
    | EXCLAMATION ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState54
    | IF ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState54
    | INT _v ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState54 _v
    | LET ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState54
    | LPAREN ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState54
    | NEW ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState54
    | NOT ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState54
    | PRINTINT ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState54
    | READINT ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState54
    | STRING _v ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState54 _v
    | WHILE ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState54
    | _ ->
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        _menhir_env._menhir_shifted <- (-1);
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState54

and _menhir_run29 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.expression) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _tok = _menhir_discard _menhir_env in
    match _tok with
    | EXCLAMATION ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState29
    | IF ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState29
    | INT _v ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState29 _v
    | LET ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState29
    | LPAREN ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState29
    | NEW ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState29
    | NOT ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState29
    | PRINTINT ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState29
    | READINT ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState29
    | STRING _v ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState29 _v
    | WHILE ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState29
    | RPAREN ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_s = MenhirState29 in
        let _v : (Ast.expression list) =     ( [] ) in
        _menhir_goto_loption_separated_nonempty_list_COMMA_exp__ _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        _menhir_env._menhir_shifted <- (-1);
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState29

and _menhir_goto_exp : _menhir_env -> 'ttv_tail -> _menhir_state -> (Ast.expression) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState26 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | LPAREN ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack)
        | AND | ASSIGN | COMMA | DIV | EOF | EQUAL | FULLSTOP | GEQ | IN | LEQ | MINUS | NOTEQUAL | OR | PLUS | RBRACE | RPAREN | SEMIC | TIMES ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s), _, e) = _menhir_stack in
            let _v : (Ast.expression) =                                                                                       ( Deref e ) in
            _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState58 | MenhirState29 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | AND ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack)
        | ASSIGN ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack)
        | COMMA ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _tok = _menhir_discard _menhir_env in
            (match _tok with
            | EXCLAMATION ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState58
            | IF ->
                _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState58
            | INT _v ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState58 _v
            | LET ->
                _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState58
            | LPAREN ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState58
            | NEW ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState58
            | NOT ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState58
            | PRINTINT ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState58
            | READINT ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState58
            | STRING _v ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState58 _v
            | WHILE ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState58
            | _ ->
                assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
                _menhir_env._menhir_shifted <- (-1);
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState58)
        | DIV ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack)
        | EQUAL ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack)
        | GEQ ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack)
        | LEQ ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack)
        | LPAREN ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack)
        | NOTEQUAL ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack)
        | SEMIC ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack)
        | RPAREN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, x) = _menhir_stack in
            let _v : (Ast.expression list) =     ( [ x ] ) in
            _menhir_goto_separated_nonempty_list_COMMA_exp_ _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState34 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | LPAREN ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack)
        | AND | ASSIGN | COMMA | DIV | EOF | EQUAL | FULLSTOP | GEQ | IN | LEQ | MINUS | NOTEQUAL | OR | PLUS | RBRACE | RPAREN | SEMIC | TIMES ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, e), _, f) = _menhir_stack in
            let _v : (Ast.expression) = let o =
                           ( Times )
            in
                                                                                                  ( Operator (o, e, f) ) in
            _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState36 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | AND ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack)
        | ASSIGN ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack)
        | DIV ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack)
        | EQUAL ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack)
        | GEQ ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack)
        | LEQ ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack)
        | LPAREN ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack)
        | NOTEQUAL ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack)
        | COMMA | EOF | FULLSTOP | IN | RBRACE | RPAREN | SEMIC ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, e), _, f) = _menhir_stack in
            let _v : (Ast.expression) =                                                                                      ( Seq(e, f) ) in
            _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState38 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DIV ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack)
        | LPAREN ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack)
        | AND | ASSIGN | COMMA | EOF | EQUAL | FULLSTOP | GEQ | IN | LEQ | MINUS | NOTEQUAL | OR | PLUS | RBRACE | RPAREN | SEMIC ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, e), _, f) = _menhir_stack in
            let _v : (Ast.expression) = let o =
                           ( Plus )
            in
                                                                                                  ( Operator (o, e, f) ) in
            _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState40 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | LPAREN ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack)
        | AND | ASSIGN | COMMA | DIV | EOF | EQUAL | FULLSTOP | GEQ | IN | LEQ | MINUS | NOTEQUAL | OR | PLUS | RBRACE | RPAREN | SEMIC | TIMES ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, e), _, f) = _menhir_stack in
            let _v : (Ast.expression) = let o =
                           ( Divide )
            in
                                                                                                  ( Operator (o, e, f) ) in
            _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState42 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | AND ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack)
        | DIV ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack)
        | EQUAL ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack)
        | GEQ ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack)
        | LEQ ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack)
        | LPAREN ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack)
        | NOTEQUAL ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack)
        | ASSIGN | COMMA | EOF | FULLSTOP | IN | OR | RBRACE | RPAREN | SEMIC ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, e), _, f) = _menhir_stack in
            let _v : (Ast.expression) = let o =
                           ( Or )
            in
                                                                                                  ( Operator (o, e, f) ) in
            _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState44 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DIV ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack)
        | EQUAL ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack)
        | GEQ ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack)
        | LEQ ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack)
        | LPAREN ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack)
        | NOTEQUAL ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack)
        | AND | ASSIGN | COMMA | EOF | FULLSTOP | IN | OR | RBRACE | RPAREN | SEMIC ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, e), _, f) = _menhir_stack in
            let _v : (Ast.expression) = let o =
                           ( Noteq )
            in
                                                                                                  ( Operator (o, e, f) ) in
            _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState46 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DIV ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack)
        | LPAREN ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack)
        | AND | ASSIGN | COMMA | EOF | EQUAL | FULLSTOP | GEQ | IN | LEQ | MINUS | NOTEQUAL | OR | PLUS | RBRACE | RPAREN | SEMIC ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, e), _, f) = _menhir_stack in
            let _v : (Ast.expression) = let o =
                           ( Minus )
            in
                                                                                                  ( Operator (o, e, f) ) in
            _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState48 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DIV ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack)
        | LPAREN ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack)
        | AND | ASSIGN | COMMA | EOF | EQUAL | FULLSTOP | GEQ | IN | LEQ | NOTEQUAL | OR | RBRACE | RPAREN | SEMIC ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, e), _, f) = _menhir_stack in
            let _v : (Ast.expression) = let o =
                           ( Leq )
            in
                                                                                                  ( Operator (o, e, f) ) in
            _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState50 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DIV ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack)
        | LPAREN ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack)
        | AND | ASSIGN | COMMA | EOF | EQUAL | FULLSTOP | GEQ | IN | LEQ | NOTEQUAL | OR | RBRACE | RPAREN | SEMIC ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, e), _, f) = _menhir_stack in
            let _v : (Ast.expression) = let o =
                           ( Geq )
            in
                                                                                                  ( Operator (o, e, f) ) in
            _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState52 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DIV ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack)
        | EQUAL ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack)
        | GEQ ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack)
        | LEQ ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack)
        | LPAREN ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack)
        | NOTEQUAL ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack)
        | AND | ASSIGN | COMMA | EOF | FULLSTOP | IN | OR | RBRACE | RPAREN | SEMIC ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, e), _, f) = _menhir_stack in
            let _v : (Ast.expression) = let o =
                           ( Equal )
            in
                                                                                                  ( Operator (o, e, f) ) in
            _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState54 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DIV ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack)
        | EQUAL ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack)
        | GEQ ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack)
        | LEQ ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack)
        | LPAREN ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack)
        | NOTEQUAL ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack)
        | AND | ASSIGN | COMMA | EOF | FULLSTOP | IN | OR | RBRACE | RPAREN | SEMIC ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, e), _, f) = _menhir_stack in
            let _v : (Ast.expression) = let o =
                           ( And )
            in
                                                                                                  ( Operator (o, e, f) ) in
            _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState56 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | AND ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack)
        | ASSIGN ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack)
        | DIV ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack)
        | EQUAL ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack)
        | GEQ ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack)
        | LEQ ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack)
        | LPAREN ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack)
        | NOTEQUAL ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack)
        | COMMA | EOF | FULLSTOP | IN | RBRACE | RPAREN | SEMIC ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, e), _, f) = _menhir_stack in
            let _v : (Ast.expression) =                                                                                       ( Asg (e, f) ) in
            _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState25 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | AND ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack)
        | ASSIGN ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack)
        | DIV ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack)
        | EQUAL ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack)
        | GEQ ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack)
        | LEQ ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack)
        | LPAREN ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack)
        | NOTEQUAL ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack)
        | RBRACE ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _tok = _menhir_discard _menhir_env in
            (match _tok with
            | ELSE ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _tok = _menhir_discard _menhir_env in
                (match _tok with
                | LBRACE ->
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let _tok = _menhir_discard _menhir_env in
                    (match _tok with
                    | EXCLAMATION ->
                        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState63
                    | IF ->
                        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState63
                    | INT _v ->
                        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState63 _v
                    | LET ->
                        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState63
                    | LPAREN ->
                        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState63
                    | NEW ->
                        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState63
                    | NOT ->
                        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState63
                    | PRINTINT ->
                        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState63
                    | READINT ->
                        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState63
                    | STRING _v ->
                        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState63 _v
                    | WHILE ->
                        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState63
                    | _ ->
                        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
                        _menhir_env._menhir_shifted <- (-1);
                        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState63)
                | _ ->
                    assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
                    _menhir_env._menhir_shifted <- (-1);
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
            | _ ->
                assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
                _menhir_env._menhir_shifted <- (-1);
                let _menhir_stack = Obj.magic _menhir_stack in
                let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
        | SEMIC ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState63 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | AND ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack)
        | ASSIGN ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack)
        | DIV ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack)
        | EQUAL ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack)
        | GEQ ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack)
        | LEQ ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack)
        | LPAREN ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack)
        | NOTEQUAL ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack)
        | RBRACE ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _ = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((((_menhir_stack, _menhir_s), _, p), _, e), _, f) = _menhir_stack in
            let _v : (Ast.expression) =                                                                                       ( If (p, e, f) ) in
            _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v
        | SEMIC ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState21 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | AND ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack)
        | ASSIGN ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack)
        | DIV ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack)
        | EQUAL ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack)
        | GEQ ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack)
        | IN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _tok = _menhir_discard _menhir_env in
            (match _tok with
            | EXCLAMATION ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState67
            | IF ->
                _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState67
            | INT _v ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState67 _v
            | LET ->
                _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState67
            | LPAREN ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState67
            | NEW ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState67
            | NOT ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState67
            | PRINTINT ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState67
            | READINT ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState67
            | STRING _v ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState67 _v
            | WHILE ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState67
            | _ ->
                assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
                _menhir_env._menhir_shifted <- (-1);
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState67)
        | LEQ ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack)
        | LPAREN ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack)
        | NOTEQUAL ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack)
        | SEMIC ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState67 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | LPAREN ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack)
        | AND | ASSIGN | COMMA | DIV | EOF | EQUAL | FULLSTOP | GEQ | IN | LEQ | MINUS | NOTEQUAL | OR | PLUS | RBRACE | RPAREN | SEMIC | TIMES ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((((_menhir_stack, _menhir_s), x), _, e), _, f) = _menhir_stack in
            let _v : (Ast.expression) =                                                                                    ( Let(x,e,f) ) in
            _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState18 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | AND ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack)
        | ASSIGN ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack)
        | DIV ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack)
        | EQUAL ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack)
        | GEQ ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack)
        | IN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _tok = _menhir_discard _menhir_env in
            (match _tok with
            | EXCLAMATION ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState70
            | IF ->
                _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState70
            | INT _v ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState70 _v
            | LET ->
                _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState70
            | LPAREN ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState70
            | NEW ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState70
            | NOT ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState70
            | PRINTINT ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState70
            | READINT ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState70
            | STRING _v ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState70 _v
            | WHILE ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState70
            | _ ->
                assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
                _menhir_env._menhir_shifted <- (-1);
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState70)
        | LEQ ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack)
        | LPAREN ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack)
        | NOTEQUAL ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack)
        | SEMIC ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState70 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | LPAREN ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack)
        | AND | ASSIGN | COMMA | DIV | EOF | EQUAL | FULLSTOP | GEQ | IN | LEQ | MINUS | NOTEQUAL | OR | PLUS | RBRACE | RPAREN | SEMIC | TIMES ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((((_menhir_stack, _menhir_s), x), _, e), _, f) = _menhir_stack in
            let _v : (Ast.expression) =                                                                                    ( New(x,e,f) ) in
            _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState15 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | LPAREN ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack)
        | AND | ASSIGN | COMMA | DIV | EOF | EQUAL | FULLSTOP | GEQ | IN | LEQ | MINUS | NOTEQUAL | OR | PLUS | RBRACE | RPAREN | SEMIC | TIMES ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s), _, e) = _menhir_stack in
            let _v : (Ast.expression) =                                                                                       ( Operator (Not, Empty, e) ) in
            _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState14 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DIV ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack)
        | GEQ ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack)
        | LEQ ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack)
        | LPAREN ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack)
        | AND | ASSIGN | COMMA | EOF | EQUAL | FULLSTOP | IN | NOTEQUAL | OR | RBRACE | RPAREN | SEMIC ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s), _, e) = _menhir_stack in
            let _v : (Ast.expression) =                                                                                       ( Printint e ) in
            _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState11 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | AND ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack)
        | ASSIGN ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack)
        | DIV ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack)
        | EQUAL ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack)
        | GEQ ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack)
        | LEQ ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack)
        | LPAREN ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack)
        | NOTEQUAL ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack)
        | RPAREN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _ = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s), _, e) = _menhir_stack in
            let _v : (Ast.expression) =                              ( e ) in
            let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
            (match _menhir_s with
            | MenhirState23 ->
                let _menhir_stack = Obj.magic _menhir_stack in
                assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
                let _tok = _menhir_env._menhir_token in
                (match _tok with
                | LBRACE ->
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let _tok = _menhir_discard _menhir_env in
                    (match _tok with
                    | EXCLAMATION ->
                        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState25
                    | IF ->
                        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState25
                    | INT _v ->
                        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState25 _v
                    | LET ->
                        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState25
                    | LPAREN ->
                        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState25
                    | NEW ->
                        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState25
                    | NOT ->
                        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState25
                    | PRINTINT ->
                        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState25
                    | READINT ->
                        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState25
                    | STRING _v ->
                        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState25 _v
                    | WHILE ->
                        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState25
                    | _ ->
                        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
                        _menhir_env._menhir_shifted <- (-1);
                        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState25)
                | _ ->
                    assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
                    _menhir_env._menhir_shifted <- (-1);
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
            | MenhirState9 | MenhirState77 | MenhirState11 | MenhirState14 | MenhirState15 | MenhirState70 | MenhirState18 | MenhirState67 | MenhirState21 | MenhirState63 | MenhirState25 | MenhirState58 | MenhirState56 | MenhirState54 | MenhirState52 | MenhirState50 | MenhirState48 | MenhirState46 | MenhirState44 | MenhirState42 | MenhirState40 | MenhirState38 | MenhirState36 | MenhirState34 | MenhirState29 | MenhirState26 ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_stack = Obj.magic _menhir_stack in
                let (_menhir_stack, _menhir_s, e) = _menhir_stack in
                let _v : (Ast.expression) =                                                                                       ( e ) in
                _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v
            | MenhirState10 ->
                let _menhir_stack = Obj.magic _menhir_stack in
                assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
                let _tok = _menhir_env._menhir_token in
                (match _tok with
                | LBRACE ->
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let _tok = _menhir_discard _menhir_env in
                    (match _tok with
                    | EXCLAMATION ->
                        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState77
                    | IF ->
                        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState77
                    | INT _v ->
                        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState77 _v
                    | LET ->
                        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState77
                    | LPAREN ->
                        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState77
                    | NEW ->
                        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState77
                    | NOT ->
                        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState77
                    | PRINTINT ->
                        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState77
                    | READINT ->
                        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState77
                    | STRING _v ->
                        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState77 _v
                    | WHILE ->
                        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState77
                    | _ ->
                        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
                        _menhir_env._menhir_shifted <- (-1);
                        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState77)
                | _ ->
                    assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
                    _menhir_env._menhir_shifted <- (-1);
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
            | _ ->
                _menhir_fail ())
        | SEMIC ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState77 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | AND ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack)
        | ASSIGN ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack)
        | DIV ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack)
        | EQUAL ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack)
        | GEQ ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack)
        | LEQ ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack)
        | LPAREN ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack)
        | NOTEQUAL ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack)
        | RBRACE ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _ = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s), _, p), _, e) = _menhir_stack in
            let _v : (Ast.expression) =                                                                                       ( While (p, e) ) in
            _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v
        | SEMIC ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState9 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | AND ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack)
        | ASSIGN ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack)
        | DIV ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack)
        | EQUAL ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack)
        | GEQ ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack)
        | LEQ ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack)
        | LPAREN ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack)
        | NOTEQUAL ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack)
        | SEMIC ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack)
        | EOF | FULLSTOP ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, name), _, xs0), _, e) = _menhir_stack in
            let _v : (Ast.fundef) = let params =
              let xs = xs0 in
                  ( xs )
            in
                                                                                                      ( Fundef(name, params, e) ) in
            let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
            let _menhir_stack = Obj.magic _menhir_stack in
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | FULLSTOP ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _tok = _menhir_discard _menhir_env in
                (match _tok with
                | STRING _v ->
                    _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState86 _v
                | _ ->
                    assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
                    _menhir_env._menhir_shifted <- (-1);
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState86)
            | EOF ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let (_menhir_stack, _menhir_s, x) = _menhir_stack in
                let _v : (Ast.program) =     ( [ x ] ) in
                _menhir_goto_separated_nonempty_list_FULLSTOP_fundef_ _menhir_env _menhir_stack _menhir_s _v
            | _ ->
                assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
                _menhir_env._menhir_shifted <- (-1);
                let _menhir_stack = Obj.magic _menhir_stack in
                let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        _menhir_fail ()

and _menhir_fail : unit -> 'a =
  fun () ->
    Printf.fprintf Pervasives.stderr "Internal failure -- please contact the parser generator's developers.\n%!";
    assert false

and _menhir_run10 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _tok = _menhir_discard _menhir_env in
    match _tok with
    | LPAREN ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState10
    | _ ->
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        _menhir_env._menhir_shifted <- (-1);
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState10

and _menhir_run12 : _menhir_env -> 'ttv_tail -> _menhir_state -> (string) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _ = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let e = _v in
    let _v : (Ast.expression) =                                                                                       ( Identifier e ) in
    _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v

and _menhir_run13 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _ = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _v : (Ast.expression) =                                                                                    ( Readint ) in
    _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v

and _menhir_run14 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _tok = _menhir_discard _menhir_env in
    match _tok with
    | EXCLAMATION ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState14
    | IF ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState14
    | INT _v ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState14 _v
    | LET ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState14
    | LPAREN ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState14
    | NEW ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState14
    | NOT ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState14
    | PRINTINT ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState14
    | READINT ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState14
    | STRING _v ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState14 _v
    | WHILE ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState14
    | _ ->
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        _menhir_env._menhir_shifted <- (-1);
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState14

and _menhir_run15 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _tok = _menhir_discard _menhir_env in
    match _tok with
    | EXCLAMATION ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState15
    | IF ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState15
    | INT _v ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState15 _v
    | LET ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState15
    | LPAREN ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState15
    | NEW ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState15
    | NOT ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState15
    | PRINTINT ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState15
    | READINT ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState15
    | STRING _v ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState15 _v
    | WHILE ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState15
    | _ ->
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        _menhir_env._menhir_shifted <- (-1);
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState15

and _menhir_run16 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _tok = _menhir_discard _menhir_env in
    match _tok with
    | STRING _v ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = (_menhir_stack, _v) in
        let _tok = _menhir_discard _menhir_env in
        (match _tok with
        | ASSIGN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _tok = _menhir_discard _menhir_env in
            (match _tok with
            | EXCLAMATION ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState18
            | IF ->
                _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState18
            | INT _v ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState18 _v
            | LET ->
                _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState18
            | LPAREN ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState18
            | NEW ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState18
            | NOT ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState18
            | PRINTINT ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState18
            | READINT ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState18
            | STRING _v ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState18 _v
            | WHILE ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState18
            | _ ->
                assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
                _menhir_env._menhir_shifted <- (-1);
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState18)
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        _menhir_env._menhir_shifted <- (-1);
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run11 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _tok = _menhir_discard _menhir_env in
    match _tok with
    | EXCLAMATION ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState11
    | IF ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState11
    | INT _v ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState11 _v
    | LET ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState11
    | LPAREN ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState11
    | NEW ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState11
    | NOT ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState11
    | PRINTINT ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState11
    | READINT ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState11
    | STRING _v ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState11 _v
    | WHILE ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState11
    | _ ->
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        _menhir_env._menhir_shifted <- (-1);
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState11

and _menhir_run19 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _tok = _menhir_discard _menhir_env in
    match _tok with
    | STRING _v ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = (_menhir_stack, _v) in
        let _tok = _menhir_discard _menhir_env in
        (match _tok with
        | ASSIGN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _tok = _menhir_discard _menhir_env in
            (match _tok with
            | EXCLAMATION ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState21
            | IF ->
                _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState21
            | INT _v ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState21 _v
            | LET ->
                _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState21
            | LPAREN ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState21
            | NEW ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState21
            | NOT ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState21
            | PRINTINT ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState21
            | READINT ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState21
            | STRING _v ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState21 _v
            | WHILE ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState21
            | _ ->
                assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
                _menhir_env._menhir_shifted <- (-1);
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState21)
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        _menhir_env._menhir_shifted <- (-1);
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run22 : _menhir_env -> 'ttv_tail -> _menhir_state -> (int) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _ = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let e = _v in
    let _v : (Ast.expression) =                                                                                       ( Const e ) in
    _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v

and _menhir_run23 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _tok = _menhir_discard _menhir_env in
    match _tok with
    | LPAREN ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState23
    | _ ->
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        _menhir_env._menhir_shifted <- (-1);
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState23

and _menhir_run26 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _tok = _menhir_discard _menhir_env in
    match _tok with
    | EXCLAMATION ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState26
    | IF ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState26
    | INT _v ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState26 _v
    | LET ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState26
    | LPAREN ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState26
    | NEW ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState26
    | NOT ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState26
    | PRINTINT ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState26
    | READINT ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState26
    | STRING _v ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState26 _v
    | WHILE ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState26
    | _ ->
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        _menhir_env._menhir_shifted <- (-1);
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState26

and _menhir_goto_separated_nonempty_list_COMMA_STRING_ : _menhir_env -> 'ttv_tail -> _menhir_state -> (string list) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState4 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let xs = _v in
        let (_menhir_stack, _menhir_s, x) = _menhir_stack in
        let _v : (string list) =     ( x :: xs ) in
        _menhir_goto_separated_nonempty_list_COMMA_STRING_ _menhir_env _menhir_stack _menhir_s _v
    | MenhirState2 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let x = _v in
        let _v : (string list) =     ( x ) in
        _menhir_goto_loption_separated_nonempty_list_COMMA_STRING__ _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        _menhir_fail ()

and _menhir_goto_loption_separated_nonempty_list_COMMA_STRING__ : _menhir_env -> 'ttv_tail -> _menhir_state -> (string list) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_stack = Obj.magic _menhir_stack in
    assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | RPAREN ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _tok = _menhir_discard _menhir_env in
        (match _tok with
        | COLON ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _tok = _menhir_discard _menhir_env in
            (match _tok with
            | EXCLAMATION ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState9
            | IF ->
                _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState9
            | INT _v ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState9 _v
            | LET ->
                _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState9
            | LPAREN ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState9
            | NEW ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState9
            | NOT ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState9
            | PRINTINT ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState9
            | READINT ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState9
            | STRING _v ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState9 _v
            | WHILE ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState9
            | _ ->
                assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
                _menhir_env._menhir_shifted <- (-1);
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState9)
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        _menhir_env._menhir_shifted <- (-1);
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run3 : _menhir_env -> 'ttv_tail -> _menhir_state -> (string) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _tok = _menhir_discard _menhir_env in
    match _tok with
    | COMMA ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _tok = _menhir_discard _menhir_env in
        (match _tok with
        | STRING _v ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState4 _v
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState4)
    | RPAREN ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, x) = _menhir_stack in
        let _v : (string list) =     ( [ x ] ) in
        _menhir_goto_separated_nonempty_list_COMMA_STRING_ _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        _menhir_env._menhir_shifted <- (-1);
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_discard : _menhir_env -> token =
  fun _menhir_env ->
    let lexbuf = _menhir_env._menhir_lexbuf in
    let _tok = _menhir_env._menhir_lexer lexbuf in
    _menhir_env._menhir_token <- _tok;
    _menhir_env._menhir_startp <- lexbuf.Lexing.lex_start_p;
    _menhir_env._menhir_endp <- lexbuf.Lexing.lex_curr_p;
    let shifted = Pervasives.(+) _menhir_env._menhir_shifted 1 in
    if Pervasives.(>=) shifted 0 then
      _menhir_env._menhir_shifted <- shifted;
    _tok

and _menhir_errorcase : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    match _menhir_s with
    | MenhirState86 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState77 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState70 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState67 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState63 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState58 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState56 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState54 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState52 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState50 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState48 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState46 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState44 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState42 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState40 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState38 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState36 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState34 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState29 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState26 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState25 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState23 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState21 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState18 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState15 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState14 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState11 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState10 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState9 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState4 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState2 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState0 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        raise _eRR

and _menhir_goto_loption_separated_nonempty_list_FULLSTOP_fundef__ : _menhir_env -> 'ttv_tail -> _menhir_state -> (Ast.program) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_stack = Obj.magic _menhir_stack in
    assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | EOF ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, xs0) = _menhir_stack in
        let _v : (Ast.program) = let el =
          let xs = xs0 in
              ( xs )
        in
                                                      ( el ) in
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let _1 = _v in
        Obj.magic _1
    | _ ->
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        _menhir_env._menhir_shifted <- (-1);
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run1 : _menhir_env -> 'ttv_tail -> _menhir_state -> (string) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _tok = _menhir_discard _menhir_env in
    match _tok with
    | LPAREN ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _tok = _menhir_discard _menhir_env in
        (match _tok with
        | STRING _v ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState2 _v
        | RPAREN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState2 in
            let _v : (string list) =     ( [] ) in
            _menhir_goto_loption_separated_nonempty_list_COMMA_STRING__ _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState2)
    | _ ->
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        _menhir_env._menhir_shifted <- (-1);
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and top : (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (Ast.program) =
  fun lexer lexbuf ->
    let _menhir_env = let _tok = lexer lexbuf in
    {
      _menhir_lexer = lexer;
      _menhir_lexbuf = lexbuf;
      _menhir_token = _tok;
      _menhir_startp = lexbuf.Lexing.lex_start_p;
      _menhir_endp = lexbuf.Lexing.lex_curr_p;
      _menhir_shifted = max_int;
      } in
    Obj.magic (let _menhir_stack = () in
    assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | STRING _v ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _v
    | EOF ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_s = MenhirState0 in
        let _v : (Ast.program) =     ( [] ) in
        _menhir_goto_loption_separated_nonempty_list_FULLSTOP_fundef__ _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        _menhir_env._menhir_shifted <- (-1);
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState0)



