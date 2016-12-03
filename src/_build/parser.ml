exception Error

type token = 
  | WHILE
  | TIMES
  | STRING of (string)
  | SEMIC
  | RSQUARE
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
  | LSQUARE
  | LPAREN
  | LET
  | LEQ
  | LBRACE
  | INT of (int)
  | IN
  | IF
  | GEQ
  | FULLSTOP
  | FOR
  | EXCLAMATION
  | EQUAL
  | EOF
  | ELSE
  | DIV
  | COMMA
  | COLON
  | ASSIGN
  | ARROW
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
  | MenhirState101
  | MenhirState92
  | MenhirState83
  | MenhirState78
  | MenhirState74
  | MenhirState67
  | MenhirState65
  | MenhirState63
  | MenhirState61
  | MenhirState59
  | MenhirState57
  | MenhirState55
  | MenhirState53
  | MenhirState51
  | MenhirState49
  | MenhirState47
  | MenhirState45
  | MenhirState43
  | MenhirState38
  | MenhirState35
  | MenhirState34
  | MenhirState27
  | MenhirState25
  | MenhirState23
  | MenhirState20
  | MenhirState19
  | MenhirState16
  | MenhirState15
  | MenhirState13
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
    match _menhir_s with
    | MenhirState38 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        let _tok = _menhir_env._menhir_token in
        (match _tok with
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
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState20 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | RSQUARE ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _ = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s), _, xs0) = _menhir_stack in
            let _v : (Ast.expression) = let il =
              let xs = xs0 in
                  ( xs )
            in
                                                                                                  ( Array(il)) in
            _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        _menhir_fail ()

and _menhir_goto_separated_nonempty_list_FULLSTOP_fundef_ : _menhir_env -> 'ttv_tail -> _menhir_state -> (Ast.program) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState0 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let x = _v in
        let _v : (Ast.program) =     ( x ) in
        _menhir_goto_loption_separated_nonempty_list_FULLSTOP_fundef__ _menhir_env _menhir_stack _menhir_s _v
    | MenhirState101 ->
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
    | MenhirState20 | MenhirState38 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let x = _v in
        let _v : (Ast.expression list) =     ( x ) in
        _menhir_goto_loption_separated_nonempty_list_COMMA_exp__ _menhir_env _menhir_stack _menhir_s _v
    | MenhirState67 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let xs = _v in
        let (_menhir_stack, _menhir_s, x) = _menhir_stack in
        let _v : (Ast.expression list) =     ( x :: xs ) in
        _menhir_goto_separated_nonempty_list_COMMA_exp_ _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        _menhir_fail ()

and _menhir_run43 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.expression) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _tok = _menhir_discard _menhir_env in
    match _tok with
    | EXCLAMATION ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState43
    | FOR ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState43
    | IF ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState43
    | INT _v ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState43 _v
    | LET ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState43
    | LPAREN ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState43
    | LSQUARE ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState43
    | NEW ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState43
    | NOT ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState43
    | PRINTINT ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState43
    | READINT ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState43
    | STRING _v ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState43 _v
    | WHILE ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState43
    | _ ->
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        _menhir_env._menhir_shifted <- (-1);
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState43

and _menhir_run45 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.expression) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _tok = _menhir_discard _menhir_env in
    match _tok with
    | EXCLAMATION ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState45
    | FOR ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState45
    | IF ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState45
    | INT _v ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState45 _v
    | LET ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState45
    | LPAREN ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState45
    | LSQUARE ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState45
    | NEW ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState45
    | NOT ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState45
    | PRINTINT ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState45
    | READINT ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState45
    | STRING _v ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState45 _v
    | WHILE ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState45
    | _ ->
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        _menhir_env._menhir_shifted <- (-1);
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState45

and _menhir_run47 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.expression) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _tok = _menhir_discard _menhir_env in
    match _tok with
    | EXCLAMATION ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState47
    | FOR ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState47
    | IF ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState47
    | INT _v ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState47 _v
    | LET ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState47
    | LPAREN ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState47
    | LSQUARE ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState47
    | NEW ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState47
    | NOT ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState47
    | PRINTINT ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState47
    | READINT ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState47
    | STRING _v ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState47 _v
    | WHILE ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState47
    | _ ->
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        _menhir_env._menhir_shifted <- (-1);
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState47

and _menhir_run51 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.expression) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _tok = _menhir_discard _menhir_env in
    match _tok with
    | EXCLAMATION ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState51
    | FOR ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState51
    | IF ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState51
    | INT _v ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState51 _v
    | LET ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState51
    | LPAREN ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState51
    | LSQUARE ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState51
    | NEW ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState51
    | NOT ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState51
    | PRINTINT ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState51
    | READINT ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState51
    | STRING _v ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState51 _v
    | WHILE ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState51
    | _ ->
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        _menhir_env._menhir_shifted <- (-1);
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState51

and _menhir_run53 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.expression) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _tok = _menhir_discard _menhir_env in
    match _tok with
    | EXCLAMATION ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState53
    | FOR ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState53
    | IF ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState53
    | INT _v ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState53 _v
    | LET ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState53
    | LPAREN ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState53
    | LSQUARE ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState53
    | NEW ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState53
    | NOT ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState53
    | PRINTINT ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState53
    | READINT ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState53
    | STRING _v ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState53 _v
    | WHILE ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState53
    | _ ->
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        _menhir_env._menhir_shifted <- (-1);
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState53

and _menhir_run55 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.expression) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _tok = _menhir_discard _menhir_env in
    match _tok with
    | EXCLAMATION ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState55
    | FOR ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState55
    | IF ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState55
    | INT _v ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState55 _v
    | LET ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState55
    | LPAREN ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState55
    | LSQUARE ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState55
    | NEW ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState55
    | NOT ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState55
    | PRINTINT ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState55
    | READINT ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState55
    | STRING _v ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState55 _v
    | WHILE ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState55
    | _ ->
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        _menhir_env._menhir_shifted <- (-1);
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState55

and _menhir_run57 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.expression) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _tok = _menhir_discard _menhir_env in
    match _tok with
    | EXCLAMATION ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState57
    | FOR ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState57
    | IF ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState57
    | INT _v ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState57 _v
    | LET ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState57
    | LPAREN ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState57
    | LSQUARE ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState57
    | NEW ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState57
    | NOT ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState57
    | PRINTINT ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState57
    | READINT ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState57
    | STRING _v ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState57 _v
    | WHILE ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState57
    | _ ->
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        _menhir_env._menhir_shifted <- (-1);
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState57

and _menhir_run59 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.expression) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _tok = _menhir_discard _menhir_env in
    match _tok with
    | EXCLAMATION ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState59
    | FOR ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState59
    | IF ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState59
    | INT _v ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState59 _v
    | LET ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState59
    | LPAREN ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState59
    | LSQUARE ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState59
    | NEW ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState59
    | NOT ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState59
    | PRINTINT ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState59
    | READINT ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState59
    | STRING _v ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState59 _v
    | WHILE ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState59
    | _ ->
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        _menhir_env._menhir_shifted <- (-1);
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState59

and _menhir_run61 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.expression) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _tok = _menhir_discard _menhir_env in
    match _tok with
    | EXCLAMATION ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState61
    | FOR ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState61
    | IF ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState61
    | INT _v ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState61 _v
    | LET ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState61
    | LPAREN ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState61
    | LSQUARE ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState61
    | NEW ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState61
    | NOT ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState61
    | PRINTINT ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState61
    | READINT ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState61
    | STRING _v ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState61 _v
    | WHILE ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState61
    | _ ->
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        _menhir_env._menhir_shifted <- (-1);
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState61

and _menhir_run49 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.expression) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _tok = _menhir_discard _menhir_env in
    match _tok with
    | EXCLAMATION ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState49
    | FOR ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState49
    | IF ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState49
    | INT _v ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState49 _v
    | LET ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState49
    | LPAREN ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState49
    | LSQUARE ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState49
    | NEW ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState49
    | NOT ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState49
    | PRINTINT ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState49
    | READINT ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState49
    | STRING _v ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState49 _v
    | WHILE ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState49
    | _ ->
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        _menhir_env._menhir_shifted <- (-1);
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState49

and _menhir_run65 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.expression) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _tok = _menhir_discard _menhir_env in
    match _tok with
    | EXCLAMATION ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState65
    | FOR ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState65
    | IF ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState65
    | INT _v ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState65 _v
    | LET ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState65
    | LPAREN ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState65
    | LSQUARE ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState65
    | NEW ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState65
    | NOT ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState65
    | PRINTINT ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState65
    | READINT ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState65
    | STRING _v ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState65 _v
    | WHILE ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState65
    | _ ->
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        _menhir_env._menhir_shifted <- (-1);
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState65

and _menhir_run63 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.expression) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _tok = _menhir_discard _menhir_env in
    match _tok with
    | EXCLAMATION ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState63
    | FOR ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState63
    | IF ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState63
    | INT _v ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState63 _v
    | LET ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState63
    | LPAREN ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState63
    | LSQUARE ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState63
    | NEW ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState63
    | NOT ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState63
    | PRINTINT ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState63
    | READINT ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState63
    | STRING _v ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState63 _v
    | WHILE ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState63
    | _ ->
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        _menhir_env._menhir_shifted <- (-1);
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState63

and _menhir_run38 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.expression) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _tok = _menhir_discard _menhir_env in
    match _tok with
    | EXCLAMATION ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState38
    | FOR ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState38
    | IF ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState38
    | INT _v ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState38 _v
    | LET ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState38
    | LPAREN ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState38
    | LSQUARE ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState38
    | NEW ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState38
    | NOT ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState38
    | PRINTINT ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState38
    | READINT ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState38
    | STRING _v ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState38 _v
    | WHILE ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState38
    | RPAREN ->
        _menhir_reduce31 _menhir_env (Obj.magic _menhir_stack) MenhirState38
    | _ ->
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        _menhir_env._menhir_shifted <- (-1);
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState38

and _menhir_reduce31 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : (Ast.expression list) =     ( [] ) in
    _menhir_goto_loption_separated_nonempty_list_COMMA_exp__ _menhir_env _menhir_stack _menhir_s _v

and _menhir_goto_exp : _menhir_env -> 'ttv_tail -> _menhir_state -> (Ast.expression) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState35 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | LPAREN ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack)
        | AND | ASSIGN | COMMA | DIV | EOF | EQUAL | FULLSTOP | GEQ | IN | LEQ | MINUS | NOTEQUAL | OR | PLUS | RBRACE | RPAREN | RSQUARE | SEMIC | TIMES ->
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
    | MenhirState20 | MenhirState67 | MenhirState38 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | AND ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack)
        | ASSIGN ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack)
        | COMMA ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _tok = _menhir_discard _menhir_env in
            (match _tok with
            | EXCLAMATION ->
                _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState67
            | FOR ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState67
            | IF ->
                _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState67
            | INT _v ->
                _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState67 _v
            | LET ->
                _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState67
            | LPAREN ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState67
            | LSQUARE ->
                _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState67
            | NEW ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState67
            | NOT ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState67
            | PRINTINT ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState67
            | READINT ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState67
            | STRING _v ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState67 _v
            | WHILE ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState67
            | _ ->
                assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
                _menhir_env._menhir_shifted <- (-1);
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState67)
        | DIV ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack)
        | EQUAL ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack)
        | GEQ ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack)
        | LEQ ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack)
        | LPAREN ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack)
        | NOTEQUAL ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack)
        | SEMIC ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | RPAREN | RSQUARE ->
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
    | MenhirState43 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | LPAREN ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack)
        | AND | ASSIGN | COMMA | DIV | EOF | EQUAL | FULLSTOP | GEQ | IN | LEQ | MINUS | NOTEQUAL | OR | PLUS | RBRACE | RPAREN | RSQUARE | SEMIC | TIMES ->
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
    | MenhirState45 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | AND ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack)
        | ASSIGN ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack)
        | DIV ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack)
        | EQUAL ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack)
        | GEQ ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack)
        | LEQ ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack)
        | LPAREN ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack)
        | NOTEQUAL ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | COMMA | EOF | FULLSTOP | IN | RBRACE | RPAREN | RSQUARE | SEMIC ->
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
    | MenhirState47 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DIV ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack)
        | LPAREN ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | AND | ASSIGN | COMMA | EOF | EQUAL | FULLSTOP | GEQ | IN | LEQ | MINUS | NOTEQUAL | OR | PLUS | RBRACE | RPAREN | RSQUARE | SEMIC ->
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
    | MenhirState49 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | LPAREN ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack)
        | AND | ASSIGN | COMMA | DIV | EOF | EQUAL | FULLSTOP | GEQ | IN | LEQ | MINUS | NOTEQUAL | OR | PLUS | RBRACE | RPAREN | RSQUARE | SEMIC | TIMES ->
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
    | MenhirState51 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | AND ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack)
        | DIV ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack)
        | EQUAL ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack)
        | GEQ ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack)
        | LEQ ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack)
        | LPAREN ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack)
        | NOTEQUAL ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | ASSIGN | COMMA | EOF | FULLSTOP | IN | OR | RBRACE | RPAREN | RSQUARE | SEMIC ->
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
    | MenhirState53 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DIV ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack)
        | EQUAL ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack)
        | GEQ ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack)
        | LEQ ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack)
        | LPAREN ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack)
        | NOTEQUAL ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | AND | ASSIGN | COMMA | EOF | FULLSTOP | IN | OR | RBRACE | RPAREN | RSQUARE | SEMIC ->
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
    | MenhirState55 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DIV ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack)
        | LPAREN ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | AND | ASSIGN | COMMA | EOF | EQUAL | FULLSTOP | GEQ | IN | LEQ | MINUS | NOTEQUAL | OR | PLUS | RBRACE | RPAREN | RSQUARE | SEMIC ->
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
    | MenhirState57 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DIV ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack)
        | LPAREN ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | AND | ASSIGN | COMMA | EOF | EQUAL | FULLSTOP | GEQ | IN | LEQ | NOTEQUAL | OR | RBRACE | RPAREN | RSQUARE | SEMIC ->
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
    | MenhirState59 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DIV ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack)
        | LPAREN ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | AND | ASSIGN | COMMA | EOF | EQUAL | FULLSTOP | GEQ | IN | LEQ | NOTEQUAL | OR | RBRACE | RPAREN | RSQUARE | SEMIC ->
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
    | MenhirState61 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DIV ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack)
        | EQUAL ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack)
        | GEQ ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack)
        | LEQ ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack)
        | LPAREN ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack)
        | NOTEQUAL ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | AND | ASSIGN | COMMA | EOF | FULLSTOP | IN | OR | RBRACE | RPAREN | RSQUARE | SEMIC ->
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
    | MenhirState63 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DIV ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack)
        | EQUAL ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack)
        | GEQ ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack)
        | LEQ ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack)
        | LPAREN ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack)
        | NOTEQUAL ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | AND | ASSIGN | COMMA | EOF | FULLSTOP | IN | OR | RBRACE | RPAREN | RSQUARE | SEMIC ->
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
    | MenhirState65 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | AND ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack)
        | ASSIGN ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack)
        | DIV ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack)
        | EQUAL ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack)
        | GEQ ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack)
        | LEQ ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack)
        | LPAREN ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack)
        | NOTEQUAL ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | COMMA | EOF | FULLSTOP | IN | RBRACE | RPAREN | RSQUARE | SEMIC ->
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
    | MenhirState34 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | AND ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack)
        | ASSIGN ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack)
        | DIV ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack)
        | EQUAL ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack)
        | GEQ ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack)
        | LEQ ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack)
        | LPAREN ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack)
        | NOTEQUAL ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack)
        | RBRACE ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _ = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((((_menhir_stack, _menhir_s), i1), i2), _, e) = _menhir_stack in
            let _v : (Ast.expression) =                                                                                       ( For(i1, i2, e) ) in
            _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v
        | SEMIC ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState27 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | AND ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack)
        | ASSIGN ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack)
        | DIV ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack)
        | EQUAL ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack)
        | GEQ ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack)
        | LEQ ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack)
        | LPAREN ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack)
        | NOTEQUAL ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack)
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
                        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState74
                    | FOR ->
                        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState74
                    | IF ->
                        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState74
                    | INT _v ->
                        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState74 _v
                    | LET ->
                        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState74
                    | LPAREN ->
                        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState74
                    | LSQUARE ->
                        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState74
                    | NEW ->
                        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState74
                    | NOT ->
                        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState74
                    | PRINTINT ->
                        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState74
                    | READINT ->
                        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState74
                    | STRING _v ->
                        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState74 _v
                    | WHILE ->
                        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState74
                    | _ ->
                        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
                        _menhir_env._menhir_shifted <- (-1);
                        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState74)
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
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState74 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | AND ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack)
        | ASSIGN ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack)
        | DIV ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack)
        | EQUAL ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack)
        | GEQ ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack)
        | LEQ ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack)
        | LPAREN ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack)
        | NOTEQUAL ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack)
        | RBRACE ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _ = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((((_menhir_stack, _menhir_s), _, p), _, e), _, f) = _menhir_stack in
            let _v : (Ast.expression) =                                                                                       ( If (p, e, f) ) in
            _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v
        | SEMIC ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState23 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | AND ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack)
        | ASSIGN ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack)
        | DIV ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack)
        | EQUAL ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack)
        | GEQ ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack)
        | IN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _tok = _menhir_discard _menhir_env in
            (match _tok with
            | EXCLAMATION ->
                _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState78
            | FOR ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState78
            | IF ->
                _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState78
            | INT _v ->
                _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState78 _v
            | LET ->
                _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState78
            | LPAREN ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState78
            | LSQUARE ->
                _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState78
            | NEW ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState78
            | NOT ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState78
            | PRINTINT ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState78
            | READINT ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState78
            | STRING _v ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState78 _v
            | WHILE ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState78
            | _ ->
                assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
                _menhir_env._menhir_shifted <- (-1);
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState78)
        | LEQ ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack)
        | LPAREN ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack)
        | NOTEQUAL ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack)
        | SEMIC ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState78 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | LPAREN ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack)
        | AND | ASSIGN | COMMA | DIV | EOF | EQUAL | FULLSTOP | GEQ | IN | LEQ | MINUS | NOTEQUAL | OR | PLUS | RBRACE | RPAREN | RSQUARE | SEMIC | TIMES ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((((_menhir_stack, _menhir_s), x), _, e), _, f) = _menhir_stack in
            let _v : (Ast.expression) =                                                                                       ( Let(x,e,f) ) in
            _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState19 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | AND ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack)
        | ASSIGN ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack)
        | DIV ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack)
        | EQUAL ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack)
        | GEQ ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack)
        | IN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _tok = _menhir_discard _menhir_env in
            (match _tok with
            | EXCLAMATION ->
                _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState83
            | FOR ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState83
            | IF ->
                _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState83
            | INT _v ->
                _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState83 _v
            | LET ->
                _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState83
            | LPAREN ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState83
            | LSQUARE ->
                _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState83
            | NEW ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState83
            | NOT ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState83
            | PRINTINT ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState83
            | READINT ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState83
            | STRING _v ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState83 _v
            | WHILE ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState83
            | _ ->
                assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
                _menhir_env._menhir_shifted <- (-1);
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState83)
        | LEQ ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack)
        | LPAREN ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack)
        | NOTEQUAL ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack)
        | SEMIC ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState83 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | LPAREN ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack)
        | AND | ASSIGN | COMMA | DIV | EOF | EQUAL | FULLSTOP | GEQ | IN | LEQ | MINUS | NOTEQUAL | OR | PLUS | RBRACE | RPAREN | RSQUARE | SEMIC | TIMES ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((((_menhir_stack, _menhir_s), x), _, e), _, f) = _menhir_stack in
            let _v : (Ast.expression) =                                                                                       ( New(x,e,f) ) in
            _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState16 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | LPAREN ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack)
        | AND | ASSIGN | COMMA | DIV | EOF | EQUAL | FULLSTOP | GEQ | IN | LEQ | MINUS | NOTEQUAL | OR | PLUS | RBRACE | RPAREN | RSQUARE | SEMIC | TIMES ->
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
    | MenhirState15 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DIV ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack)
        | GEQ ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack)
        | LEQ ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack)
        | LPAREN ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | AND | ASSIGN | COMMA | EOF | EQUAL | FULLSTOP | IN | NOTEQUAL | OR | RBRACE | RPAREN | RSQUARE | SEMIC ->
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
    | MenhirState13 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | AND ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack)
        | ASSIGN ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack)
        | DIV ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack)
        | EQUAL ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack)
        | GEQ ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack)
        | LEQ ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack)
        | LPAREN ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack)
        | NOTEQUAL ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack)
        | RSQUARE ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _ = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, x), _, e) = _menhir_stack in
            let _v : (Ast.expression) =                                                                                       ( ArrayAccess(x, e) ) in
            _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v
        | SEMIC ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
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
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack)
        | ASSIGN ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack)
        | DIV ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack)
        | EQUAL ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack)
        | GEQ ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack)
        | LEQ ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack)
        | LPAREN ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack)
        | NOTEQUAL ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack)
        | RPAREN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _ = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s), _, e) = _menhir_stack in
            let _v : (Ast.expression) =                              ( e ) in
            let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
            (match _menhir_s with
            | MenhirState25 ->
                let _menhir_stack = Obj.magic _menhir_stack in
                assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
                let _tok = _menhir_env._menhir_token in
                (match _tok with
                | LBRACE ->
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let _tok = _menhir_discard _menhir_env in
                    (match _tok with
                    | EXCLAMATION ->
                        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState27
                    | FOR ->
                        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState27
                    | IF ->
                        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState27
                    | INT _v ->
                        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState27 _v
                    | LET ->
                        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState27
                    | LPAREN ->
                        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState27
                    | LSQUARE ->
                        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState27
                    | NEW ->
                        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState27
                    | NOT ->
                        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState27
                    | PRINTINT ->
                        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState27
                    | READINT ->
                        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState27
                    | STRING _v ->
                        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState27 _v
                    | WHILE ->
                        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState27
                    | _ ->
                        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
                        _menhir_env._menhir_shifted <- (-1);
                        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState27)
                | _ ->
                    assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
                    _menhir_env._menhir_shifted <- (-1);
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
            | MenhirState9 | MenhirState92 | MenhirState11 | MenhirState13 | MenhirState15 | MenhirState16 | MenhirState83 | MenhirState19 | MenhirState20 | MenhirState78 | MenhirState23 | MenhirState74 | MenhirState27 | MenhirState34 | MenhirState67 | MenhirState65 | MenhirState63 | MenhirState61 | MenhirState59 | MenhirState57 | MenhirState55 | MenhirState53 | MenhirState51 | MenhirState49 | MenhirState47 | MenhirState45 | MenhirState43 | MenhirState38 | MenhirState35 ->
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
                        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState92
                    | FOR ->
                        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState92
                    | IF ->
                        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState92
                    | INT _v ->
                        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState92 _v
                    | LET ->
                        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState92
                    | LPAREN ->
                        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState92
                    | LSQUARE ->
                        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState92
                    | NEW ->
                        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState92
                    | NOT ->
                        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState92
                    | PRINTINT ->
                        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState92
                    | READINT ->
                        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState92
                    | STRING _v ->
                        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState92 _v
                    | WHILE ->
                        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState92
                    | _ ->
                        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
                        _menhir_env._menhir_shifted <- (-1);
                        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState92)
                | _ ->
                    assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
                    _menhir_env._menhir_shifted <- (-1);
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
            | _ ->
                _menhir_fail ())
        | SEMIC ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState92 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | AND ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack)
        | ASSIGN ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack)
        | DIV ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack)
        | EQUAL ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack)
        | GEQ ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack)
        | LEQ ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack)
        | LPAREN ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack)
        | NOTEQUAL ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack)
        | RBRACE ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _ = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s), _, p), _, e) = _menhir_stack in
            let _v : (Ast.expression) =                                                                                       ( While (p, e) ) in
            _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v
        | SEMIC ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
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
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack)
        | ASSIGN ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack)
        | DIV ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack)
        | EQUAL ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack)
        | GEQ ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack)
        | LEQ ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack)
        | LPAREN ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack)
        | NOTEQUAL ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack)
        | SEMIC ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
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
                    _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState101 _v
                | _ ->
                    assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
                    _menhir_env._menhir_shifted <- (-1);
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState101)
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
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _tok = _menhir_discard _menhir_env in
    match _tok with
    | LSQUARE ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _tok = _menhir_discard _menhir_env in
        (match _tok with
        | EXCLAMATION ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState13
        | FOR ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState13
        | IF ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState13
        | INT _v ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState13 _v
        | LET ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState13
        | LPAREN ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState13
        | LSQUARE ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState13
        | NEW ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState13
        | NOT ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState13
        | PRINTINT ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState13
        | READINT ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState13
        | STRING _v ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState13 _v
        | WHILE ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState13
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState13)
    | AND | ASSIGN | COMMA | DIV | EOF | EQUAL | FULLSTOP | GEQ | IN | LEQ | LPAREN | MINUS | NOTEQUAL | OR | PLUS | RBRACE | RPAREN | RSQUARE | SEMIC | TIMES ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, e) = _menhir_stack in
        let _v : (Ast.expression) =                                                                                       ( Identifier e ) in
        _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        _menhir_env._menhir_shifted <- (-1);
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run14 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _ = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _v : (Ast.expression) =                                                                                    ( Readint ) in
    _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v

and _menhir_run15 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _tok = _menhir_discard _menhir_env in
    match _tok with
    | EXCLAMATION ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState15
    | FOR ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState15
    | IF ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState15
    | INT _v ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState15 _v
    | LET ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState15
    | LPAREN ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState15
    | LSQUARE ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState15
    | NEW ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState15
    | NOT ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState15
    | PRINTINT ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState15
    | READINT ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState15
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
    | EXCLAMATION ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState16
    | FOR ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState16
    | IF ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState16
    | INT _v ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState16 _v
    | LET ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState16
    | LPAREN ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState16
    | LSQUARE ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState16
    | NEW ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState16
    | NOT ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState16
    | PRINTINT ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState16
    | READINT ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState16
    | STRING _v ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState16 _v
    | WHILE ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState16
    | _ ->
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        _menhir_env._menhir_shifted <- (-1);
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState16

and _menhir_run17 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
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
                _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState19
            | FOR ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState19
            | IF ->
                _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState19
            | INT _v ->
                _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState19 _v
            | LET ->
                _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState19
            | LPAREN ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState19
            | LSQUARE ->
                _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState19
            | NEW ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState19
            | NOT ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState19
            | PRINTINT ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState19
            | READINT ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState19
            | STRING _v ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState19 _v
            | WHILE ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState19
            | _ ->
                assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
                _menhir_env._menhir_shifted <- (-1);
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState19)
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

and _menhir_run20 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _tok = _menhir_discard _menhir_env in
    match _tok with
    | EXCLAMATION ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState20
    | FOR ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState20
    | IF ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState20
    | INT _v ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState20 _v
    | LET ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState20
    | LPAREN ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState20
    | LSQUARE ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState20
    | NEW ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState20
    | NOT ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState20
    | PRINTINT ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState20
    | READINT ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState20
    | STRING _v ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState20 _v
    | WHILE ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState20
    | RSQUARE ->
        _menhir_reduce31 _menhir_env (Obj.magic _menhir_stack) MenhirState20
    | _ ->
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        _menhir_env._menhir_shifted <- (-1);
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState20

and _menhir_run11 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _tok = _menhir_discard _menhir_env in
    match _tok with
    | EXCLAMATION ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState11
    | FOR ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState11
    | IF ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState11
    | INT _v ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState11 _v
    | LET ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState11
    | LPAREN ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState11
    | LSQUARE ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState11
    | NEW ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState11
    | NOT ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState11
    | PRINTINT ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState11
    | READINT ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState11
    | STRING _v ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState11 _v
    | WHILE ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState11
    | _ ->
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        _menhir_env._menhir_shifted <- (-1);
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState11

and _menhir_run21 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
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
                _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState23
            | FOR ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState23
            | IF ->
                _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState23
            | INT _v ->
                _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState23 _v
            | LET ->
                _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState23
            | LPAREN ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState23
            | LSQUARE ->
                _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState23
            | NEW ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState23
            | NOT ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState23
            | PRINTINT ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState23
            | READINT ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState23
            | STRING _v ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState23 _v
            | WHILE ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState23
            | _ ->
                assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
                _menhir_env._menhir_shifted <- (-1);
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState23)
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

and _menhir_run24 : _menhir_env -> 'ttv_tail -> _menhir_state -> (int) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _ = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let e = _v in
    let _v : (Ast.expression) =                                                                                       ( Const e ) in
    _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v

and _menhir_run25 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _tok = _menhir_discard _menhir_env in
    match _tok with
    | LPAREN ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState25
    | _ ->
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        _menhir_env._menhir_shifted <- (-1);
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState25

and _menhir_run28 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _tok = _menhir_discard _menhir_env in
    match _tok with
    | LPAREN ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _tok = _menhir_discard _menhir_env in
        (match _tok with
        | INT _v ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_stack = (_menhir_stack, _v) in
            let _tok = _menhir_discard _menhir_env in
            (match _tok with
            | ARROW ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _tok = _menhir_discard _menhir_env in
                (match _tok with
                | INT _v ->
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let _menhir_stack = (_menhir_stack, _v) in
                    let _tok = _menhir_discard _menhir_env in
                    (match _tok with
                    | RPAREN ->
                        let _menhir_stack = Obj.magic _menhir_stack in
                        let _tok = _menhir_discard _menhir_env in
                        (match _tok with
                        | LBRACE ->
                            let _menhir_stack = Obj.magic _menhir_stack in
                            let _tok = _menhir_discard _menhir_env in
                            (match _tok with
                            | EXCLAMATION ->
                                _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState34
                            | FOR ->
                                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState34
                            | IF ->
                                _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState34
                            | INT _v ->
                                _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState34 _v
                            | LET ->
                                _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState34
                            | LPAREN ->
                                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState34
                            | LSQUARE ->
                                _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState34
                            | NEW ->
                                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState34
                            | NOT ->
                                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState34
                            | PRINTINT ->
                                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState34
                            | READINT ->
                                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState34
                            | STRING _v ->
                                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState34 _v
                            | WHILE ->
                                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState34
                            | _ ->
                                assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
                                _menhir_env._menhir_shifted <- (-1);
                                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState34)
                        | _ ->
                            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
                            _menhir_env._menhir_shifted <- (-1);
                            let _menhir_stack = Obj.magic _menhir_stack in
                            let (((_menhir_stack, _menhir_s), _), _) = _menhir_stack in
                            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
                    | _ ->
                        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
                        _menhir_env._menhir_shifted <- (-1);
                        let _menhir_stack = Obj.magic _menhir_stack in
                        let (((_menhir_stack, _menhir_s), _), _) = _menhir_stack in
                        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
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
                let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        _menhir_env._menhir_shifted <- (-1);
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run35 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _tok = _menhir_discard _menhir_env in
    match _tok with
    | EXCLAMATION ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState35
    | FOR ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState35
    | IF ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState35
    | INT _v ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState35 _v
    | LET ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState35
    | LPAREN ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState35
    | LSQUARE ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState35
    | NEW ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState35
    | NOT ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState35
    | PRINTINT ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState35
    | READINT ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState35
    | STRING _v ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState35 _v
    | WHILE ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState35
    | _ ->
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        _menhir_env._menhir_shifted <- (-1);
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState35

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
                _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState9
            | FOR ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState9
            | IF ->
                _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState9
            | INT _v ->
                _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState9 _v
            | LET ->
                _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState9
            | LPAREN ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState9
            | LSQUARE ->
                _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState9
            | NEW ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState9
            | NOT ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState9
            | PRINTINT ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState9
            | READINT ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState9
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
    | MenhirState101 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState92 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState83 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState78 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState74 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState67 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState65 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState63 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState61 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState59 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState57 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState55 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState53 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState51 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState49 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState47 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState45 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState43 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState38 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState35 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState34 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (((_menhir_stack, _menhir_s), _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState27 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState25 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState23 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState20 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState19 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState16 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState15 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState13 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
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



