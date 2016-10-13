exception Error

type token = 
  | WHILE
  | TIMES
  | STRING of (
# 2 "Parser.mly"
       (string)
# 10 "Parser.ml"
)
  | SEMIC
  | RPAREN
  | READINT
  | RBRACE
  | PRINTINT
  | PLUS
  | OR
  | NOT
  | NEW
  | MINUS
  | LPAREN
  | LET
  | LEQ
  | LBRACE
  | INT of (
# 1 "Parser.mly"
       (int)
# 29 "Parser.ml"
)
  | IN
  | IF
  | GEQ
  | FULLSTOP
  | EXCLAMATION
  | EQUAL
  | EOF
  | ELSE
  | DO
  | DIV
  | DEF
  | COMMA
  | COLON
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
  | MenhirState90
  | MenhirState81
  | MenhirState74
  | MenhirState71
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
  | MenhirState41
  | MenhirState39
  | MenhirState37
  | MenhirState32
  | MenhirState30
  | MenhirState28
  | MenhirState25
  | MenhirState24
  | MenhirState21
  | MenhirState18
  | MenhirState15
  | MenhirState14
  | MenhirState11
  | MenhirState9
  | MenhirState4
  | MenhirState2
  | MenhirState0

let _eRR =
  Error

let rec _menhir_goto_loption_separated_nonempty_list_COMMA_exp__ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_loption_separated_nonempty_list_COMMA_exp__ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : ('freshtv525 * _menhir_state * 'tv_exp) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_exp__) = Obj.magic _menhir_stack in
    ((assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
    let _tok = _menhir_env._menhir_token in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : ('freshtv523 * _menhir_state * 'tv_exp) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_exp__) = _menhir_stack in
    let (_tok : token) = _tok in
    ((match _tok with
    | RPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv519 * _menhir_state * 'tv_exp) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_exp__) = Obj.magic _menhir_stack in
        ((let _ = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv517 * _menhir_state * 'tv_exp) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_exp__) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, e), _, xs0) = _menhir_stack in
        let _v : 'tv_exp = let params =
          let xs = xs0 in
          
# 135 "/Users/jackturner/.opam/4.01.0/lib/menhir/standard.mly"
    ( xs )
# 114 "Parser.ml"
          
        in
        
# 49 "Parser.mly"
                                                                 ( Ast.Application(e,params) )
# 120 "Parser.ml"
         in
        _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v) : 'freshtv518)) : 'freshtv520)
    | _ ->
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        _menhir_env._menhir_shifted <- (-1);
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv521 * _menhir_state * 'tv_exp) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_exp__) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv522)) : 'freshtv524)) : 'freshtv526)

and _menhir_goto_separated_nonempty_list_FULLSTOP_fundef_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_separated_nonempty_list_FULLSTOP_fundef_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState0 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv511) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_FULLSTOP_fundef_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv509) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (x : 'tv_separated_nonempty_list_FULLSTOP_fundef_) = _v in
        ((let _v : 'tv_loption_separated_nonempty_list_FULLSTOP_fundef__ = 
# 59 "/Users/jackturner/.opam/4.01.0/lib/menhir/standard.mly"
    ( x )
# 146 "Parser.ml"
         in
        _menhir_goto_loption_separated_nonempty_list_FULLSTOP_fundef__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv510)) : 'freshtv512)
    | MenhirState90 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv515 * _menhir_state * 'tv_fundef) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_FULLSTOP_fundef_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv513 * _menhir_state * 'tv_fundef) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let (xs : 'tv_separated_nonempty_list_FULLSTOP_fundef_) = _v in
        ((let (_menhir_stack, _menhir_s, x) = _menhir_stack in
        let _v : 'tv_separated_nonempty_list_FULLSTOP_fundef_ = 
# 146 "/Users/jackturner/.opam/4.01.0/lib/menhir/standard.mly"
    ( x :: xs )
# 162 "Parser.ml"
         in
        _menhir_goto_separated_nonempty_list_FULLSTOP_fundef_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv514)) : 'freshtv516)
    | _ ->
        _menhir_fail ()

and _menhir_goto_separated_nonempty_list_COMMA_exp_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_separated_nonempty_list_COMMA_exp_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState32 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv503) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_COMMA_exp_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv501) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (x : 'tv_separated_nonempty_list_COMMA_exp_) = _v in
        ((let _v : 'tv_loption_separated_nonempty_list_COMMA_exp__ = 
# 59 "/Users/jackturner/.opam/4.01.0/lib/menhir/standard.mly"
    ( x )
# 183 "Parser.ml"
         in
        _menhir_goto_loption_separated_nonempty_list_COMMA_exp__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv502)) : 'freshtv504)
    | MenhirState58 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv507 * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_COMMA_exp_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv505 * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let (xs : 'tv_separated_nonempty_list_COMMA_exp_) = _v in
        ((let (_menhir_stack, _menhir_s, x) = _menhir_stack in
        let _v : 'tv_separated_nonempty_list_COMMA_exp_ = 
# 146 "/Users/jackturner/.opam/4.01.0/lib/menhir/standard.mly"
    ( x :: xs )
# 199 "Parser.ml"
         in
        _menhir_goto_separated_nonempty_list_COMMA_exp_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv506)) : 'freshtv508)
    | _ ->
        _menhir_fail ()

and _menhir_run37 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_exp -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _tok = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv499 * _menhir_state * 'tv_exp) = _menhir_stack in
    let (_tok : token) = _tok in
    ((match _tok with
    | EXCLAMATION ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState37
    | IF ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState37
    | INT _v ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState37 _v
    | LET ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState37
    | NEW ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState37
    | NOT ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState37
    | PRINTINT ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState37
    | READINT ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState37
    | STRING _v ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState37 _v
    | WHILE ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState37
    | _ ->
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        _menhir_env._menhir_shifted <- (-1);
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState37) : 'freshtv500)

and _menhir_run52 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_exp -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _tok = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv497 * _menhir_state * 'tv_exp) = _menhir_stack in
    let (_tok : token) = _tok in
    ((match _tok with
    | EXCLAMATION ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState52
    | IF ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState52
    | INT _v ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState52 _v
    | LET ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState52
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
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState52) : 'freshtv498)

and _menhir_run54 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_exp -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _tok = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv495 * _menhir_state * 'tv_exp) = _menhir_stack in
    let (_tok : token) = _tok in
    ((match _tok with
    | EXCLAMATION ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState54
    | IF ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState54
    | INT _v ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState54 _v
    | LET ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState54
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
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState54) : 'freshtv496)

and _menhir_run56 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_exp -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _tok = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv493 * _menhir_state * 'tv_exp) = _menhir_stack in
    let (_tok : token) = _tok in
    ((match _tok with
    | EXCLAMATION ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState56
    | IF ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState56
    | INT _v ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState56 _v
    | LET ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState56
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
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState56) : 'freshtv494)

and _menhir_run30 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_exp -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _tok = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv491 * _menhir_state * 'tv_exp) = _menhir_stack in
    let (_tok : token) = _tok in
    ((match _tok with
    | EXCLAMATION ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState30
    | IF ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState30
    | INT _v ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState30 _v
    | LET ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState30
    | NEW ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState30
    | NOT ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState30
    | PRINTINT ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState30
    | READINT ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState30
    | STRING _v ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState30 _v
    | WHILE ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState30
    | _ ->
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        _menhir_env._menhir_shifted <- (-1);
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState30) : 'freshtv492)

and _menhir_run39 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_exp -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _tok = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv489 * _menhir_state * 'tv_exp) = _menhir_stack in
    let (_tok : token) = _tok in
    ((match _tok with
    | EXCLAMATION ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState39
    | IF ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState39
    | INT _v ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState39 _v
    | LET ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState39
    | NEW ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState39
    | NOT ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState39
    | PRINTINT ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState39
    | READINT ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState39
    | STRING _v ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState39 _v
    | WHILE ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState39
    | _ ->
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        _menhir_env._menhir_shifted <- (-1);
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState39) : 'freshtv490)

and _menhir_run46 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_exp -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _tok = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv487 * _menhir_state * 'tv_exp) = _menhir_stack in
    let (_tok : token) = _tok in
    ((match _tok with
    | EXCLAMATION ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState46
    | IF ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState46
    | INT _v ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState46 _v
    | LET ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState46
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
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState46) : 'freshtv488)

and _menhir_run32 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_exp -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _tok = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv485 * _menhir_state * 'tv_exp) = _menhir_stack in
    let (_tok : token) = _tok in
    ((match _tok with
    | EXCLAMATION ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState32
    | IF ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState32
    | INT _v ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState32 _v
    | LET ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState32
    | NEW ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState32
    | NOT ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState32
    | PRINTINT ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState32
    | READINT ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState32
    | STRING _v ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState32 _v
    | WHILE ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState32
    | RPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv483) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = MenhirState32 in
        ((let _v : 'tv_loption_separated_nonempty_list_COMMA_exp__ = 
# 57 "/Users/jackturner/.opam/4.01.0/lib/menhir/standard.mly"
    ( [] )
# 463 "Parser.ml"
         in
        _menhir_goto_loption_separated_nonempty_list_COMMA_exp__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv484)
    | _ ->
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        _menhir_env._menhir_shifted <- (-1);
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState32) : 'freshtv486)

and _menhir_run48 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_exp -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _tok = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv481 * _menhir_state * 'tv_exp) = _menhir_stack in
    let (_tok : token) = _tok in
    ((match _tok with
    | EXCLAMATION ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState48
    | IF ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState48
    | INT _v ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState48 _v
    | LET ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState48
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
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState48) : 'freshtv482)

and _menhir_run50 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_exp -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _tok = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv479 * _menhir_state * 'tv_exp) = _menhir_stack in
    let (_tok : token) = _tok in
    ((match _tok with
    | EXCLAMATION ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState50
    | IF ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState50
    | INT _v ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState50 _v
    | LET ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState50
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
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState50) : 'freshtv480)

and _menhir_run41 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_exp -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _tok = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv477 * _menhir_state * 'tv_exp) = _menhir_stack in
    let (_tok : token) = _tok in
    ((match _tok with
    | EXCLAMATION ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState41
    | IF ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState41
    | INT _v ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState41 _v
    | LET ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState41
    | NEW ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState41
    | NOT ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState41
    | PRINTINT ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState41
    | READINT ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState41
    | STRING _v ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState41 _v
    | WHILE ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState41
    | _ ->
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        _menhir_env._menhir_shifted <- (-1);
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState41) : 'freshtv478)

and _menhir_run43 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_exp -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _tok = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv475 * _menhir_state * 'tv_exp) = _menhir_stack in
    let (_tok : token) = _tok in
    ((match _tok with
    | EQUAL ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv471 * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
        ((let _tok = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv469 * _menhir_state * 'tv_exp) = _menhir_stack in
        let (_tok : token) = _tok in
        ((match _tok with
        | EXCLAMATION ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState44
        | IF ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState44
        | INT _v ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState44 _v
        | LET ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState44
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
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState44) : 'freshtv470)) : 'freshtv472)
    | _ ->
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        _menhir_env._menhir_shifted <- (-1);
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv473 * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv474)) : 'freshtv476)

and _menhir_run27 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_exp -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _tok = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv467 * _menhir_state * 'tv_exp) = _menhir_stack in
    let (_tok : token) = _tok in
    ((match _tok with
    | EQUAL ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv463 * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
        ((let _tok = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv461 * _menhir_state * 'tv_exp) = _menhir_stack in
        let (_tok : token) = _tok in
        ((match _tok with
        | EXCLAMATION ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState28
        | IF ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState28
        | INT _v ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState28 _v
        | LET ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState28
        | NEW ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState28
        | NOT ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState28
        | PRINTINT ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState28
        | READINT ->
            _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState28
        | STRING _v ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState28 _v
        | WHILE ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState28
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState28) : 'freshtv462)) : 'freshtv464)
    | _ ->
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        _menhir_env._menhir_shifted <- (-1);
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv465 * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv466)) : 'freshtv468)

and _menhir_goto_exp : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_exp -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState25 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv191 * _menhir_state) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
        ((assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        let _tok = _menhir_env._menhir_token in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv189 * _menhir_state) * _menhir_state * 'tv_exp) = _menhir_stack in
        let (_tok : token) = _tok in
        ((match _tok with
        | EXCLAMATION ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack)
        | AND | COLON | COMMA | DIV | EOF | EQUAL | FULLSTOP | GEQ | IN | LEQ | LPAREN | MINUS | OR | PLUS | RBRACE | RPAREN | SEMIC | TIMES ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv185 * _menhir_state) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, e) = _menhir_stack in
            let _v : 'tv_exp = 
# 65 "Parser.mly"
                               ( Ast.Deref(e)  )
# 683 "Parser.ml"
             in
            _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v) : 'freshtv186)
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv187 * _menhir_state) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv188)) : 'freshtv190)) : 'freshtv192)
    | MenhirState28 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv199 * _menhir_state * 'tv_exp) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
        ((assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        let _tok = _menhir_env._menhir_token in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv197 * _menhir_state * 'tv_exp) * _menhir_state * 'tv_exp) = _menhir_stack in
        let (_tok : token) = _tok in
        ((match _tok with
        | COLON ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | DIV ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | EXCLAMATION ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack)
        | GEQ ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack)
        | LEQ ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack)
        | LPAREN ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack)
        | AND | COMMA | EOF | EQUAL | FULLSTOP | IN | OR | RBRACE | RPAREN | SEMIC ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv193 * _menhir_state * 'tv_exp) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, e), _, f) = _menhir_stack in
            let _v : 'tv_exp = 
# 57 "Parser.mly"
                                           ( Ast.Operator(Ast.Noteq, e, f) )
# 727 "Parser.ml"
             in
            _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v) : 'freshtv194)
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv195 * _menhir_state * 'tv_exp) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv196)) : 'freshtv198)) : 'freshtv200)
    | MenhirState30 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv207 * _menhir_state * 'tv_exp) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
        ((assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        let _tok = _menhir_env._menhir_token in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv205 * _menhir_state * 'tv_exp) * _menhir_state * 'tv_exp) = _menhir_stack in
        let (_tok : token) = _tok in
        ((match _tok with
        | COLON ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | EXCLAMATION ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack)
        | LPAREN ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack)
        | AND | COMMA | DIV | EOF | EQUAL | FULLSTOP | GEQ | IN | LEQ | MINUS | OR | PLUS | RBRACE | RPAREN | SEMIC | TIMES ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv201 * _menhir_state * 'tv_exp) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, e), _, f) = _menhir_stack in
            let _v : 'tv_exp = 
# 50 "Parser.mly"
                                  ( Ast.Operator(Ast.Times, e, f) )
# 759 "Parser.ml"
             in
            _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v) : 'freshtv202)
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv203 * _menhir_state * 'tv_exp) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv204)) : 'freshtv206)) : 'freshtv208)
    | MenhirState58 | MenhirState32 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv219 * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
        ((assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        let _tok = _menhir_env._menhir_token in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv217 * _menhir_state * 'tv_exp) = _menhir_stack in
        let (_tok : token) = _tok in
        ((match _tok with
        | AND ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack)
        | COLON ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | COMMA ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv211 * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
            ((let _tok = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv209 * _menhir_state * 'tv_exp) = _menhir_stack in
            let (_tok : token) = _tok in
            ((match _tok with
            | EXCLAMATION ->
                _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState58
            | IF ->
                _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState58
            | INT _v ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState58 _v
            | LET ->
                _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState58
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
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState58) : 'freshtv210)) : 'freshtv212)
        | DIV ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | EQUAL ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack)
        | EXCLAMATION ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack)
        | GEQ ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack)
        | LEQ ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack)
        | LPAREN ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack)
        | SEMIC ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack)
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv213 * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, x) = _menhir_stack in
            let _v : 'tv_separated_nonempty_list_COMMA_exp_ = 
# 144 "/Users/jackturner/.opam/4.01.0/lib/menhir/standard.mly"
    ( [ x ] )
# 843 "Parser.ml"
             in
            _menhir_goto_separated_nonempty_list_COMMA_exp_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv214)
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv215 * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv216)) : 'freshtv218)) : 'freshtv220)
    | MenhirState37 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv227 * _menhir_state * 'tv_exp) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
        ((assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        let _tok = _menhir_env._menhir_token in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv225 * _menhir_state * 'tv_exp) * _menhir_state * 'tv_exp) = _menhir_stack in
        let (_tok : token) = _tok in
        ((match _tok with
        | AND ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack)
        | COLON ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | DIV ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | EQUAL ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack)
        | EXCLAMATION ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack)
        | GEQ ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack)
        | LEQ ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack)
        | LPAREN ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack)
        | COMMA | EOF | FULLSTOP | IN | RBRACE | RPAREN | SEMIC ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv221 * _menhir_state * 'tv_exp) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, e), _, f) = _menhir_stack in
            let _v : 'tv_exp = 
# 58 "Parser.mly"
                                  ( Ast.Seq(e, f) )
# 893 "Parser.ml"
             in
            _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v) : 'freshtv222)
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv223 * _menhir_state * 'tv_exp) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv224)) : 'freshtv226)) : 'freshtv228)
    | MenhirState39 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv235 * _menhir_state * 'tv_exp) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
        ((assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        let _tok = _menhir_env._menhir_token in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv233 * _menhir_state * 'tv_exp) * _menhir_state * 'tv_exp) = _menhir_stack in
        let (_tok : token) = _tok in
        ((match _tok with
        | COLON ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | DIV ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | EXCLAMATION ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack)
        | LPAREN ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack)
        | AND | COMMA | EOF | EQUAL | FULLSTOP | GEQ | IN | LEQ | MINUS | OR | PLUS | RBRACE | RPAREN | SEMIC ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv229 * _menhir_state * 'tv_exp) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, e), _, f) = _menhir_stack in
            let _v : 'tv_exp = 
# 52 "Parser.mly"
                                  ( Ast.Operator(Ast.Plus, e, f) )
# 929 "Parser.ml"
             in
            _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v) : 'freshtv230)
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv231 * _menhir_state * 'tv_exp) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv232)) : 'freshtv234)) : 'freshtv236)
    | MenhirState41 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv243 * _menhir_state * 'tv_exp) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
        ((assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        let _tok = _menhir_env._menhir_token in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv241 * _menhir_state * 'tv_exp) * _menhir_state * 'tv_exp) = _menhir_stack in
        let (_tok : token) = _tok in
        ((match _tok with
        | COLON ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | EXCLAMATION ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack)
        | LPAREN ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack)
        | AND | COMMA | DIV | EOF | EQUAL | FULLSTOP | GEQ | IN | LEQ | MINUS | OR | PLUS | RBRACE | RPAREN | SEMIC | TIMES ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv237 * _menhir_state * 'tv_exp) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, e), _, f) = _menhir_stack in
            let _v : 'tv_exp = 
# 51 "Parser.mly"
                                  ( Ast.Operator(Ast.Divide, e, f) )
# 961 "Parser.ml"
             in
            _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v) : 'freshtv238)
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv239 * _menhir_state * 'tv_exp) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv240)) : 'freshtv242)) : 'freshtv244)
    | MenhirState44 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv251 * _menhir_state * 'tv_exp) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
        ((assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        let _tok = _menhir_env._menhir_token in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv249 * _menhir_state * 'tv_exp) * _menhir_state * 'tv_exp) = _menhir_stack in
        let (_tok : token) = _tok in
        ((match _tok with
        | COLON ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | DIV ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | EXCLAMATION ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack)
        | GEQ ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack)
        | LEQ ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack)
        | LPAREN ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack)
        | AND | COMMA | EOF | EQUAL | FULLSTOP | IN | OR | RBRACE | RPAREN | SEMIC ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv245 * _menhir_state * 'tv_exp) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, e), _, f) = _menhir_stack in
            let _v : 'tv_exp = 
# 61 "Parser.mly"
                                        ( Ast.Asg(e, f) )
# 1005 "Parser.ml"
             in
            _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v) : 'freshtv246)
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv247 * _menhir_state * 'tv_exp) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv248)) : 'freshtv250)) : 'freshtv252)
    | MenhirState46 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv259 * _menhir_state * 'tv_exp) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
        ((assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        let _tok = _menhir_env._menhir_token in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv257 * _menhir_state * 'tv_exp) * _menhir_state * 'tv_exp) = _menhir_stack in
        let (_tok : token) = _tok in
        ((match _tok with
        | COLON ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | DIV ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | EXCLAMATION ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack)
        | LPAREN ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack)
        | AND | COMMA | EOF | EQUAL | FULLSTOP | GEQ | IN | LEQ | MINUS | OR | PLUS | RBRACE | RPAREN | SEMIC ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv253 * _menhir_state * 'tv_exp) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, e), _, f) = _menhir_stack in
            let _v : 'tv_exp = 
# 53 "Parser.mly"
                                  ( Ast.Operator(Ast.Minus, e, f) )
# 1041 "Parser.ml"
             in
            _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v) : 'freshtv254)
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv255 * _menhir_state * 'tv_exp) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv256)) : 'freshtv258)) : 'freshtv260)
    | MenhirState48 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv267 * _menhir_state * 'tv_exp) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
        ((assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        let _tok = _menhir_env._menhir_token in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv265 * _menhir_state * 'tv_exp) * _menhir_state * 'tv_exp) = _menhir_stack in
        let (_tok : token) = _tok in
        ((match _tok with
        | COLON ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | DIV ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | EXCLAMATION ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack)
        | LPAREN ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack)
        | AND | COMMA | EOF | EQUAL | FULLSTOP | GEQ | IN | LEQ | OR | RBRACE | RPAREN | SEMIC ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv261 * _menhir_state * 'tv_exp) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, e), _, f) = _menhir_stack in
            let _v : 'tv_exp = 
# 54 "Parser.mly"
                                  ( Ast.Operator(Ast.Leq, e, f) )
# 1081 "Parser.ml"
             in
            _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v) : 'freshtv262)
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv263 * _menhir_state * 'tv_exp) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv264)) : 'freshtv266)) : 'freshtv268)
    | MenhirState50 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv275 * _menhir_state * 'tv_exp) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
        ((assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        let _tok = _menhir_env._menhir_token in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv273 * _menhir_state * 'tv_exp) * _menhir_state * 'tv_exp) = _menhir_stack in
        let (_tok : token) = _tok in
        ((match _tok with
        | COLON ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | DIV ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | EXCLAMATION ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack)
        | LPAREN ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack)
        | AND | COMMA | EOF | EQUAL | FULLSTOP | GEQ | IN | LEQ | OR | RBRACE | RPAREN | SEMIC ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv269 * _menhir_state * 'tv_exp) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, e), _, f) = _menhir_stack in
            let _v : 'tv_exp = 
# 55 "Parser.mly"
                                  ( Ast.Operator(Ast.Geq, e, f) )
# 1121 "Parser.ml"
             in
            _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v) : 'freshtv270)
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv271 * _menhir_state * 'tv_exp) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv272)) : 'freshtv274)) : 'freshtv276)
    | MenhirState52 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv283 * _menhir_state * 'tv_exp) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
        ((assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        let _tok = _menhir_env._menhir_token in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv281 * _menhir_state * 'tv_exp) * _menhir_state * 'tv_exp) = _menhir_stack in
        let (_tok : token) = _tok in
        ((match _tok with
        | AND ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack)
        | COLON ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | DIV ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | EQUAL ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack)
        | EXCLAMATION ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack)
        | GEQ ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack)
        | LEQ ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack)
        | LPAREN ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack)
        | COMMA | EOF | FULLSTOP | IN | OR | RBRACE | RPAREN | SEMIC ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv277 * _menhir_state * 'tv_exp) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, e), _, f) = _menhir_stack in
            let _v : 'tv_exp = 
# 60 "Parser.mly"
                                  ( Ast.Operator(Ast.Or, e, f) )
# 1169 "Parser.ml"
             in
            _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v) : 'freshtv278)
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv279 * _menhir_state * 'tv_exp) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv280)) : 'freshtv282)) : 'freshtv284)
    | MenhirState54 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv291 * _menhir_state * 'tv_exp) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
        ((assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        let _tok = _menhir_env._menhir_token in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv289 * _menhir_state * 'tv_exp) * _menhir_state * 'tv_exp) = _menhir_stack in
        let (_tok : token) = _tok in
        ((match _tok with
        | COLON ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | DIV ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | EXCLAMATION ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack)
        | GEQ ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack)
        | LEQ ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack)
        | LPAREN ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack)
        | AND | COMMA | EOF | EQUAL | FULLSTOP | IN | OR | RBRACE | RPAREN | SEMIC ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv285 * _menhir_state * 'tv_exp) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, e), _, f) = _menhir_stack in
            let _v : 'tv_exp = 
# 56 "Parser.mly"
                                    ( Ast.Operator(Ast.Equal, e, f) )
# 1213 "Parser.ml"
             in
            _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v) : 'freshtv286)
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv287 * _menhir_state * 'tv_exp) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv288)) : 'freshtv290)) : 'freshtv292)
    | MenhirState56 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv299 * _menhir_state * 'tv_exp) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
        ((assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        let _tok = _menhir_env._menhir_token in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv297 * _menhir_state * 'tv_exp) * _menhir_state * 'tv_exp) = _menhir_stack in
        let (_tok : token) = _tok in
        ((match _tok with
        | COLON ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | DIV ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | EQUAL ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack)
        | EXCLAMATION ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack)
        | GEQ ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack)
        | LEQ ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack)
        | LPAREN ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack)
        | AND | COMMA | EOF | FULLSTOP | IN | OR | RBRACE | RPAREN | SEMIC ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv293 * _menhir_state * 'tv_exp) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, e), _, f) = _menhir_stack in
            let _v : 'tv_exp = 
# 59 "Parser.mly"
                                  ( Ast.Operator(Ast.And, e, f) )
# 1259 "Parser.ml"
             in
            _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v) : 'freshtv294)
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv295 * _menhir_state * 'tv_exp) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv296)) : 'freshtv298)) : 'freshtv300)
    | MenhirState24 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv321 * _menhir_state) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
        ((assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        let _tok = _menhir_env._menhir_token in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv319 * _menhir_state) * _menhir_state * 'tv_exp) = _menhir_stack in
        let (_tok : token) = _tok in
        ((match _tok with
        | AND ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack)
        | COLON ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | DIV ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | EQUAL ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack)
        | EXCLAMATION ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack)
        | GEQ ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack)
        | LEQ ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack)
        | LPAREN ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack)
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv315 * _menhir_state) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
            ((let _tok = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv313 * _menhir_state) * _menhir_state * 'tv_exp) = _menhir_stack in
            let (_tok : token) = _tok in
            ((match _tok with
            | DO ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv309 * _menhir_state) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
                ((let _tok = _menhir_discard _menhir_env in
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv307 * _menhir_state) * _menhir_state * 'tv_exp) = _menhir_stack in
                let (_tok : token) = _tok in
                ((match _tok with
                | LBRACE ->
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : ('freshtv303 * _menhir_state) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
                    ((let _tok = _menhir_discard _menhir_env in
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : ('freshtv301 * _menhir_state) * _menhir_state * 'tv_exp) = _menhir_stack in
                    let (_tok : token) = _tok in
                    ((match _tok with
                    | EXCLAMATION ->
                        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState63
                    | IF ->
                        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState63
                    | INT _v ->
                        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState63 _v
                    | LET ->
                        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState63
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
                        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState63) : 'freshtv302)) : 'freshtv304)
                | _ ->
                    assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
                    _menhir_env._menhir_shifted <- (-1);
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : ('freshtv305 * _menhir_state) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
                    ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv306)) : 'freshtv308)) : 'freshtv310)
            | _ ->
                assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
                _menhir_env._menhir_shifted <- (-1);
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv311 * _menhir_state) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv312)) : 'freshtv314)) : 'freshtv316)
        | SEMIC ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv317 * _menhir_state) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv318)) : 'freshtv320)) : 'freshtv322)
    | MenhirState63 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv343 * _menhir_state) * _menhir_state * 'tv_exp) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
        ((assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        let _tok = _menhir_env._menhir_token in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv341 * _menhir_state) * _menhir_state * 'tv_exp) * _menhir_state * 'tv_exp) = _menhir_stack in
        let (_tok : token) = _tok in
        ((match _tok with
        | AND ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack)
        | COLON ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | DIV ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | EQUAL ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack)
        | EXCLAMATION ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack)
        | GEQ ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack)
        | LEQ ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack)
        | LPAREN ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack)
        | RBRACE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv337 * _menhir_state) * _menhir_state * 'tv_exp) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
            ((let _tok = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv335 * _menhir_state) * _menhir_state * 'tv_exp) * _menhir_state * 'tv_exp) = _menhir_stack in
            let (_tok : token) = _tok in
            ((match _tok with
            | ELSE ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv331 * _menhir_state) * _menhir_state * 'tv_exp) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
                ((let _tok = _menhir_discard _menhir_env in
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv329 * _menhir_state) * _menhir_state * 'tv_exp) * _menhir_state * 'tv_exp) = _menhir_stack in
                let (_tok : token) = _tok in
                ((match _tok with
                | LBRACE ->
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : (('freshtv325 * _menhir_state) * _menhir_state * 'tv_exp) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
                    ((let _tok = _menhir_discard _menhir_env in
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : (('freshtv323 * _menhir_state) * _menhir_state * 'tv_exp) * _menhir_state * 'tv_exp) = _menhir_stack in
                    let (_tok : token) = _tok in
                    ((match _tok with
                    | EXCLAMATION ->
                        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState67
                    | IF ->
                        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState67
                    | INT _v ->
                        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState67 _v
                    | LET ->
                        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState67
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
                        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState67) : 'freshtv324)) : 'freshtv326)
                | _ ->
                    assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
                    _menhir_env._menhir_shifted <- (-1);
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : (('freshtv327 * _menhir_state) * _menhir_state * 'tv_exp) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
                    ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv328)) : 'freshtv330)) : 'freshtv332)
            | _ ->
                assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
                _menhir_env._menhir_shifted <- (-1);
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv333 * _menhir_state) * _menhir_state * 'tv_exp) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv334)) : 'freshtv336)) : 'freshtv338)
        | SEMIC ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv339 * _menhir_state) * _menhir_state * 'tv_exp) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv340)) : 'freshtv342)) : 'freshtv344)
    | MenhirState67 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv353 * _menhir_state) * _menhir_state * 'tv_exp) * _menhir_state * 'tv_exp) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
        ((assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        let _tok = _menhir_env._menhir_token in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv351 * _menhir_state) * _menhir_state * 'tv_exp) * _menhir_state * 'tv_exp) * _menhir_state * 'tv_exp) = _menhir_stack in
        let (_tok : token) = _tok in
        ((match _tok with
        | AND ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack)
        | COLON ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | DIV ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | EQUAL ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack)
        | EXCLAMATION ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack)
        | GEQ ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack)
        | LEQ ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack)
        | LPAREN ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack)
        | RBRACE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv347 * _menhir_state) * _menhir_state * 'tv_exp) * _menhir_state * 'tv_exp) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
            ((let _ = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv345 * _menhir_state) * _menhir_state * 'tv_exp) * _menhir_state * 'tv_exp) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
            ((let ((((_menhir_stack, _menhir_s), _, e), _, f), _, g) = _menhir_stack in
            let _v : 'tv_exp = 
# 64 "Parser.mly"
                                                                                            ( Ast.If(e,f,g) )
# 1518 "Parser.ml"
             in
            _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v) : 'freshtv346)) : 'freshtv348)
        | SEMIC ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv349 * _menhir_state) * _menhir_state * 'tv_exp) * _menhir_state * 'tv_exp) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv350)) : 'freshtv352)) : 'freshtv354)
    | MenhirState21 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv363 * _menhir_state) * (
# 2 "Parser.mly"
       (string)
# 1537 "Parser.ml"
        )) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
        ((assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        let _tok = _menhir_env._menhir_token in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv361 * _menhir_state) * (
# 2 "Parser.mly"
       (string)
# 1545 "Parser.ml"
        )) * _menhir_state * 'tv_exp) = _menhir_stack in
        let (_tok : token) = _tok in
        ((match _tok with
        | AND ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack)
        | COLON ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | DIV ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | EQUAL ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack)
        | EXCLAMATION ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack)
        | GEQ ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack)
        | IN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv357 * _menhir_state) * (
# 2 "Parser.mly"
       (string)
# 1566 "Parser.ml"
            )) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
            ((let _tok = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv355 * _menhir_state) * (
# 2 "Parser.mly"
       (string)
# 1573 "Parser.ml"
            )) * _menhir_state * 'tv_exp) = _menhir_stack in
            let (_tok : token) = _tok in
            ((match _tok with
            | EXCLAMATION ->
                _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState71
            | IF ->
                _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState71
            | INT _v ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState71 _v
            | LET ->
                _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState71
            | NEW ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState71
            | NOT ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState71
            | PRINTINT ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState71
            | READINT ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState71
            | STRING _v ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState71 _v
            | WHILE ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState71
            | _ ->
                assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
                _menhir_env._menhir_shifted <- (-1);
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState71) : 'freshtv356)) : 'freshtv358)
        | LEQ ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack)
        | LPAREN ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack)
        | SEMIC ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv359 * _menhir_state) * (
# 2 "Parser.mly"
       (string)
# 1622 "Parser.ml"
            )) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv360)) : 'freshtv362)) : 'freshtv364)
    | MenhirState71 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv371 * _menhir_state) * (
# 2 "Parser.mly"
       (string)
# 1631 "Parser.ml"
        )) * _menhir_state * 'tv_exp) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
        ((assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        let _tok = _menhir_env._menhir_token in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv369 * _menhir_state) * (
# 2 "Parser.mly"
       (string)
# 1639 "Parser.ml"
        )) * _menhir_state * 'tv_exp) * _menhir_state * 'tv_exp) = _menhir_stack in
        let (_tok : token) = _tok in
        ((match _tok with
        | AND ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack)
        | COLON ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | DIV ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | EQUAL ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack)
        | EXCLAMATION ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack)
        | GEQ ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack)
        | LEQ ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack)
        | LPAREN ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack)
        | COMMA | EOF | FULLSTOP | IN | RBRACE | RPAREN | SEMIC ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv365 * _menhir_state) * (
# 2 "Parser.mly"
       (string)
# 1672 "Parser.ml"
            )) * _menhir_state * 'tv_exp) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
            ((let ((((_menhir_stack, _menhir_s), x), _, e), _, f) = _menhir_stack in
            let _v : 'tv_exp = 
# 66 "Parser.mly"
                                                 ( Ast.Let(x,e,f) )
# 1678 "Parser.ml"
             in
            _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v) : 'freshtv366)
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv367 * _menhir_state) * (
# 2 "Parser.mly"
       (string)
# 1688 "Parser.ml"
            )) * _menhir_state * 'tv_exp) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv368)) : 'freshtv370)) : 'freshtv372)
    | MenhirState18 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv381 * _menhir_state) * (
# 2 "Parser.mly"
       (string)
# 1697 "Parser.ml"
        )) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
        ((assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        let _tok = _menhir_env._menhir_token in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv379 * _menhir_state) * (
# 2 "Parser.mly"
       (string)
# 1705 "Parser.ml"
        )) * _menhir_state * 'tv_exp) = _menhir_stack in
        let (_tok : token) = _tok in
        ((match _tok with
        | AND ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack)
        | COLON ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | DIV ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | EQUAL ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack)
        | EXCLAMATION ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack)
        | GEQ ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack)
        | IN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv375 * _menhir_state) * (
# 2 "Parser.mly"
       (string)
# 1726 "Parser.ml"
            )) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
            ((let _tok = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv373 * _menhir_state) * (
# 2 "Parser.mly"
       (string)
# 1733 "Parser.ml"
            )) * _menhir_state * 'tv_exp) = _menhir_stack in
            let (_tok : token) = _tok in
            ((match _tok with
            | EXCLAMATION ->
                _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState74
            | IF ->
                _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState74
            | INT _v ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState74 _v
            | LET ->
                _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState74
            | NEW ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState74
            | NOT ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState74
            | PRINTINT ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState74
            | READINT ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState74
            | STRING _v ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState74 _v
            | WHILE ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState74
            | _ ->
                assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
                _menhir_env._menhir_shifted <- (-1);
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState74) : 'freshtv374)) : 'freshtv376)
        | LEQ ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack)
        | LPAREN ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack)
        | SEMIC ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv377 * _menhir_state) * (
# 2 "Parser.mly"
       (string)
# 1782 "Parser.ml"
            )) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv378)) : 'freshtv380)) : 'freshtv382)
    | MenhirState74 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv389 * _menhir_state) * (
# 2 "Parser.mly"
       (string)
# 1791 "Parser.ml"
        )) * _menhir_state * 'tv_exp) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
        ((assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        let _tok = _menhir_env._menhir_token in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv387 * _menhir_state) * (
# 2 "Parser.mly"
       (string)
# 1799 "Parser.ml"
        )) * _menhir_state * 'tv_exp) * _menhir_state * 'tv_exp) = _menhir_stack in
        let (_tok : token) = _tok in
        ((match _tok with
        | AND ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack)
        | COLON ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | DIV ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | EQUAL ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack)
        | EXCLAMATION ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack)
        | GEQ ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack)
        | LEQ ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack)
        | LPAREN ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack)
        | COMMA | EOF | FULLSTOP | IN | RBRACE | RPAREN | SEMIC ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv383 * _menhir_state) * (
# 2 "Parser.mly"
       (string)
# 1832 "Parser.ml"
            )) * _menhir_state * 'tv_exp) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
            ((let ((((_menhir_stack, _menhir_s), x), _, e), _, f) = _menhir_stack in
            let _v : 'tv_exp = 
# 67 "Parser.mly"
                                                 ( Ast.New(x,e,f) )
# 1838 "Parser.ml"
             in
            _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v) : 'freshtv384)
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv385 * _menhir_state) * (
# 2 "Parser.mly"
       (string)
# 1848 "Parser.ml"
            )) * _menhir_state * 'tv_exp) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv386)) : 'freshtv388)) : 'freshtv390)
    | MenhirState15 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv397 * _menhir_state) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
        ((assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        let _tok = _menhir_env._menhir_token in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv395 * _menhir_state) * _menhir_state * 'tv_exp) = _menhir_stack in
        let (_tok : token) = _tok in
        ((match _tok with
        | COLON ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | DIV ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | EQUAL ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack)
        | EXCLAMATION ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack)
        | GEQ ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack)
        | LEQ ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack)
        | LPAREN ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack)
        | AND | COMMA | EOF | FULLSTOP | IN | OR | RBRACE | RPAREN | SEMIC ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv391 * _menhir_state) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, e) = _menhir_stack in
            let _v : 'tv_exp = 
# 62 "Parser.mly"
                          ( Ast.Operator(Ast.Not, e, e) )
# 1888 "Parser.ml"
             in
            _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v) : 'freshtv392)
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv393 * _menhir_state) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv394)) : 'freshtv396)) : 'freshtv398)
    | MenhirState14 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv405 * _menhir_state) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
        ((assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        let _tok = _menhir_env._menhir_token in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv403 * _menhir_state) * _menhir_state * 'tv_exp) = _menhir_stack in
        let (_tok : token) = _tok in
        ((match _tok with
        | AND ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack)
        | COLON ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | DIV ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | EQUAL ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack)
        | EXCLAMATION ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack)
        | GEQ ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack)
        | LEQ ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack)
        | LPAREN ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack)
        | COMMA | EOF | FULLSTOP | IN | RBRACE | RPAREN | SEMIC ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv399 * _menhir_state) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, e) = _menhir_stack in
            let _v : 'tv_exp = 
# 47 "Parser.mly"
                              ( Ast.Printint(e) )
# 1938 "Parser.ml"
             in
            _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v) : 'freshtv400)
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv401 * _menhir_state) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv402)) : 'freshtv404)) : 'freshtv406)
    | MenhirState11 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv427 * _menhir_state) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
        ((assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        let _tok = _menhir_env._menhir_token in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv425 * _menhir_state) * _menhir_state * 'tv_exp) = _menhir_stack in
        let (_tok : token) = _tok in
        ((match _tok with
        | AND ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack)
        | COLON ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | DIV ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | EQUAL ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack)
        | EXCLAMATION ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack)
        | GEQ ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack)
        | LEQ ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack)
        | LPAREN ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack)
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv421 * _menhir_state) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
            ((let _tok = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv419 * _menhir_state) * _menhir_state * 'tv_exp) = _menhir_stack in
            let (_tok : token) = _tok in
            ((match _tok with
            | DO ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv415 * _menhir_state) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
                ((let _tok = _menhir_discard _menhir_env in
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv413 * _menhir_state) * _menhir_state * 'tv_exp) = _menhir_stack in
                let (_tok : token) = _tok in
                ((match _tok with
                | LBRACE ->
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : ('freshtv409 * _menhir_state) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
                    ((let _tok = _menhir_discard _menhir_env in
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : ('freshtv407 * _menhir_state) * _menhir_state * 'tv_exp) = _menhir_stack in
                    let (_tok : token) = _tok in
                    ((match _tok with
                    | EXCLAMATION ->
                        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState81
                    | IF ->
                        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState81
                    | INT _v ->
                        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState81 _v
                    | LET ->
                        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState81
                    | NEW ->
                        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState81
                    | NOT ->
                        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState81
                    | PRINTINT ->
                        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState81
                    | READINT ->
                        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState81
                    | STRING _v ->
                        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState81 _v
                    | WHILE ->
                        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState81
                    | _ ->
                        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
                        _menhir_env._menhir_shifted <- (-1);
                        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState81) : 'freshtv408)) : 'freshtv410)
                | _ ->
                    assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
                    _menhir_env._menhir_shifted <- (-1);
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : ('freshtv411 * _menhir_state) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
                    ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv412)) : 'freshtv414)) : 'freshtv416)
            | _ ->
                assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
                _menhir_env._menhir_shifted <- (-1);
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv417 * _menhir_state) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv418)) : 'freshtv420)) : 'freshtv422)
        | SEMIC ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv423 * _menhir_state) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv424)) : 'freshtv426)) : 'freshtv428)
    | MenhirState81 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv437 * _menhir_state) * _menhir_state * 'tv_exp) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
        ((assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        let _tok = _menhir_env._menhir_token in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv435 * _menhir_state) * _menhir_state * 'tv_exp) * _menhir_state * 'tv_exp) = _menhir_stack in
        let (_tok : token) = _tok in
        ((match _tok with
        | AND ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack)
        | COLON ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | DIV ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | EQUAL ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack)
        | EXCLAMATION ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack)
        | GEQ ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack)
        | LEQ ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack)
        | LPAREN ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack)
        | RBRACE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv431 * _menhir_state) * _menhir_state * 'tv_exp) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
            ((let _ = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv429 * _menhir_state) * _menhir_state * 'tv_exp) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s), _, e), _, f) = _menhir_stack in
            let _v : 'tv_exp = 
# 63 "Parser.mly"
                                                                ( Ast.While(e,f) )
# 2093 "Parser.ml"
             in
            _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v) : 'freshtv430)) : 'freshtv432)
        | SEMIC ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv433 * _menhir_state) * _menhir_state * 'tv_exp) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv434)) : 'freshtv436)) : 'freshtv438)
    | MenhirState9 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv459 * _menhir_state * (
# 2 "Parser.mly"
       (string)
# 2112 "Parser.ml"
        )) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_STRING__) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
        ((assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        let _tok = _menhir_env._menhir_token in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv457 * _menhir_state * (
# 2 "Parser.mly"
       (string)
# 2120 "Parser.ml"
        )) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_STRING__) * _menhir_state * 'tv_exp) = _menhir_stack in
        let (_tok : token) = _tok in
        ((match _tok with
        | AND ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack)
        | COLON ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | DIV ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | EQUAL ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack)
        | EXCLAMATION ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack)
        | GEQ ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack)
        | LEQ ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack)
        | LPAREN ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack)
        | SEMIC ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack)
        | EOF | FULLSTOP ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv453 * _menhir_state * (
# 2 "Parser.mly"
       (string)
# 2155 "Parser.ml"
            )) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_STRING__) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s, name), _, xs0), _, e) = _menhir_stack in
            let _v : 'tv_fundef = let params =
              let xs = xs0 in
              
# 135 "/Users/jackturner/.opam/4.01.0/lib/menhir/standard.mly"
    ( xs )
# 2163 "Parser.ml"
              
            in
            
# 70 "Parser.mly"
                                                                                        ( (name, params, e))
# 2169 "Parser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv451) = _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : 'tv_fundef) = _v in
            ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv449 * _menhir_state * 'tv_fundef) = Obj.magic _menhir_stack in
            ((assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            let _tok = _menhir_env._menhir_token in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv447 * _menhir_state * 'tv_fundef) = _menhir_stack in
            let (_tok : token) = _tok in
            ((match _tok with
            | FULLSTOP ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv441 * _menhir_state * 'tv_fundef) = Obj.magic _menhir_stack in
                ((let _tok = _menhir_discard _menhir_env in
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv439 * _menhir_state * 'tv_fundef) = _menhir_stack in
                let (_tok : token) = _tok in
                ((match _tok with
                | STRING _v ->
                    _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState90 _v
                | _ ->
                    assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
                    _menhir_env._menhir_shifted <- (-1);
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState90) : 'freshtv440)) : 'freshtv442)
            | EOF ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv443 * _menhir_state * 'tv_fundef) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, x) = _menhir_stack in
                let _v : 'tv_separated_nonempty_list_FULLSTOP_fundef_ = 
# 144 "/Users/jackturner/.opam/4.01.0/lib/menhir/standard.mly"
    ( [ x ] )
# 2205 "Parser.ml"
                 in
                _menhir_goto_separated_nonempty_list_FULLSTOP_fundef_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv444)
            | _ ->
                assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
                _menhir_env._menhir_shifted <- (-1);
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv445 * _menhir_state * 'tv_fundef) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv446)) : 'freshtv448)) : 'freshtv450)) : 'freshtv452)) : 'freshtv454)
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv455 * _menhir_state * (
# 2 "Parser.mly"
       (string)
# 2222 "Parser.ml"
            )) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_STRING__) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv456)) : 'freshtv458)) : 'freshtv460)
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
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv183 * _menhir_state) = _menhir_stack in
    let (_tok : token) = _tok in
    ((match _tok with
    | LPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv179 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _tok = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv177 * _menhir_state) = _menhir_stack in
        let (_tok : token) = _tok in
        ((match _tok with
        | EXCLAMATION ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState11
        | IF ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState11
        | INT _v ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState11 _v
        | LET ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState11
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
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState11) : 'freshtv178)) : 'freshtv180)
    | _ ->
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        _menhir_env._menhir_shifted <- (-1);
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv181 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv182)) : 'freshtv184)

and _menhir_run12 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 2 "Parser.mly"
       (string)
# 2285 "Parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _ = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv175) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (name : (
# 2 "Parser.mly"
       (string)
# 2295 "Parser.ml"
    )) = _v in
    ((let _v : 'tv_exp = 
# 46 "Parser.mly"
                          ( Ast.Identifier(name) )
# 2300 "Parser.ml"
     in
    _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v) : 'freshtv176)

and _menhir_run13 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _ = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv173) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _v : 'tv_exp = 
# 48 "Parser.mly"
                       ( Ast.Readint )
# 2313 "Parser.ml"
     in
    _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v) : 'freshtv174)

and _menhir_run14 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _tok = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv171 * _menhir_state) = _menhir_stack in
    let (_tok : token) = _tok in
    ((match _tok with
    | EXCLAMATION ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState14
    | IF ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState14
    | INT _v ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState14 _v
    | LET ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState14
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
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState14) : 'freshtv172)

and _menhir_run15 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _tok = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv169 * _menhir_state) = _menhir_stack in
    let (_tok : token) = _tok in
    ((match _tok with
    | EXCLAMATION ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState15
    | IF ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState15
    | INT _v ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState15 _v
    | LET ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState15
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
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState15) : 'freshtv170)

and _menhir_run16 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _tok = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv167 * _menhir_state) = _menhir_stack in
    let (_tok : token) = _tok in
    ((match _tok with
    | STRING _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv163 * _menhir_state) = Obj.magic _menhir_stack in
        let (_v : (
# 2 "Parser.mly"
       (string)
# 2397 "Parser.ml"
        )) = _v in
        ((let _menhir_stack = (_menhir_stack, _v) in
        let _tok = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv161 * _menhir_state) * (
# 2 "Parser.mly"
       (string)
# 2405 "Parser.ml"
        )) = _menhir_stack in
        let (_tok : token) = _tok in
        ((match _tok with
        | EQUAL ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv157 * _menhir_state) * (
# 2 "Parser.mly"
       (string)
# 2414 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _tok = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv155 * _menhir_state) * (
# 2 "Parser.mly"
       (string)
# 2421 "Parser.ml"
            )) = _menhir_stack in
            let (_tok : token) = _tok in
            ((match _tok with
            | EXCLAMATION ->
                _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState18
            | IF ->
                _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState18
            | INT _v ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState18 _v
            | LET ->
                _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState18
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
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState18) : 'freshtv156)) : 'freshtv158)
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv159 * _menhir_state) * (
# 2 "Parser.mly"
       (string)
# 2456 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv160)) : 'freshtv162)) : 'freshtv164)
    | _ ->
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        _menhir_env._menhir_shifted <- (-1);
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv165 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv166)) : 'freshtv168)

and _menhir_run19 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _tok = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv153 * _menhir_state) = _menhir_stack in
    let (_tok : token) = _tok in
    ((match _tok with
    | STRING _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv149 * _menhir_state) = Obj.magic _menhir_stack in
        let (_v : (
# 2 "Parser.mly"
       (string)
# 2482 "Parser.ml"
        )) = _v in
        ((let _menhir_stack = (_menhir_stack, _v) in
        let _tok = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv147 * _menhir_state) * (
# 2 "Parser.mly"
       (string)
# 2490 "Parser.ml"
        )) = _menhir_stack in
        let (_tok : token) = _tok in
        ((match _tok with
        | EQUAL ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv143 * _menhir_state) * (
# 2 "Parser.mly"
       (string)
# 2499 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _tok = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv141 * _menhir_state) * (
# 2 "Parser.mly"
       (string)
# 2506 "Parser.ml"
            )) = _menhir_stack in
            let (_tok : token) = _tok in
            ((match _tok with
            | EXCLAMATION ->
                _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState21
            | IF ->
                _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState21
            | INT _v ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState21 _v
            | LET ->
                _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState21
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
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState21) : 'freshtv142)) : 'freshtv144)
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv145 * _menhir_state) * (
# 2 "Parser.mly"
       (string)
# 2541 "Parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv146)) : 'freshtv148)) : 'freshtv150)
    | _ ->
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        _menhir_env._menhir_shifted <- (-1);
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv151 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv152)) : 'freshtv154)

and _menhir_run22 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 1 "Parser.mly"
       (int)
# 2556 "Parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _ = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv139) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (i : (
# 1 "Parser.mly"
       (int)
# 2566 "Parser.ml"
    )) = _v in
    ((let _v : 'tv_exp = 
# 45 "Parser.mly"
                      ( Ast.Const(i) )
# 2571 "Parser.ml"
     in
    _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v) : 'freshtv140)

and _menhir_run23 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _tok = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv137 * _menhir_state) = _menhir_stack in
    let (_tok : token) = _tok in
    ((match _tok with
    | LPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv133 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _tok = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv131 * _menhir_state) = _menhir_stack in
        let (_tok : token) = _tok in
        ((match _tok with
        | EXCLAMATION ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState24
        | IF ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState24
        | INT _v ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState24 _v
        | LET ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState24
        | NEW ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState24
        | NOT ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState24
        | PRINTINT ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState24
        | READINT ->
            _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState24
        | STRING _v ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState24 _v
        | WHILE ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState24
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState24) : 'freshtv132)) : 'freshtv134)
    | _ ->
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        _menhir_env._menhir_shifted <- (-1);
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv135 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv136)) : 'freshtv138)

and _menhir_run25 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _tok = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv129 * _menhir_state) = _menhir_stack in
    let (_tok : token) = _tok in
    ((match _tok with
    | EXCLAMATION ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState25
    | IF ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState25
    | INT _v ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState25 _v
    | LET ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState25
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
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState25) : 'freshtv130)

and _menhir_goto_separated_nonempty_list_COMMA_STRING_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_separated_nonempty_list_COMMA_STRING_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState4 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv123 * _menhir_state * (
# 2 "Parser.mly"
       (string)
# 2664 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_COMMA_STRING_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv121 * _menhir_state * (
# 2 "Parser.mly"
       (string)
# 2672 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let (xs : 'tv_separated_nonempty_list_COMMA_STRING_) = _v in
        ((let (_menhir_stack, _menhir_s, x) = _menhir_stack in
        let _v : 'tv_separated_nonempty_list_COMMA_STRING_ = 
# 146 "/Users/jackturner/.opam/4.01.0/lib/menhir/standard.mly"
    ( x :: xs )
# 2680 "Parser.ml"
         in
        _menhir_goto_separated_nonempty_list_COMMA_STRING_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv122)) : 'freshtv124)
    | MenhirState2 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv127) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_COMMA_STRING_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv125) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (x : 'tv_separated_nonempty_list_COMMA_STRING_) = _v in
        ((let _v : 'tv_loption_separated_nonempty_list_COMMA_STRING__ = 
# 59 "/Users/jackturner/.opam/4.01.0/lib/menhir/standard.mly"
    ( x )
# 2695 "Parser.ml"
         in
        _menhir_goto_loption_separated_nonempty_list_COMMA_STRING__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv126)) : 'freshtv128)
    | _ ->
        _menhir_fail ()

and _menhir_goto_loption_separated_nonempty_list_COMMA_STRING__ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_loption_separated_nonempty_list_COMMA_STRING__ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : ('freshtv119 * _menhir_state * (
# 2 "Parser.mly"
       (string)
# 2708 "Parser.ml"
    )) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_STRING__) = Obj.magic _menhir_stack in
    ((assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
    let _tok = _menhir_env._menhir_token in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : ('freshtv117 * _menhir_state * (
# 2 "Parser.mly"
       (string)
# 2716 "Parser.ml"
    )) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_STRING__) = _menhir_stack in
    let (_tok : token) = _tok in
    ((match _tok with
    | RPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv113 * _menhir_state * (
# 2 "Parser.mly"
       (string)
# 2725 "Parser.ml"
        )) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_STRING__) = Obj.magic _menhir_stack in
        ((let _tok = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv111 * _menhir_state * (
# 2 "Parser.mly"
       (string)
# 2732 "Parser.ml"
        )) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_STRING__) = _menhir_stack in
        let (_tok : token) = _tok in
        ((match _tok with
        | DEF ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv107 * _menhir_state * (
# 2 "Parser.mly"
       (string)
# 2741 "Parser.ml"
            )) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_STRING__) = Obj.magic _menhir_stack in
            ((let _tok = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv105 * _menhir_state * (
# 2 "Parser.mly"
       (string)
# 2748 "Parser.ml"
            )) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_STRING__) = _menhir_stack in
            let (_tok : token) = _tok in
            ((match _tok with
            | EXCLAMATION ->
                _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState9
            | IF ->
                _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState9
            | INT _v ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState9 _v
            | LET ->
                _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState9
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
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState9) : 'freshtv106)) : 'freshtv108)
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv109 * _menhir_state * (
# 2 "Parser.mly"
       (string)
# 2783 "Parser.ml"
            )) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_STRING__) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv110)) : 'freshtv112)) : 'freshtv114)
    | _ ->
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        _menhir_env._menhir_shifted <- (-1);
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv115 * _menhir_state * (
# 2 "Parser.mly"
       (string)
# 2794 "Parser.ml"
        )) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_STRING__) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv116)) : 'freshtv118)) : 'freshtv120)

and _menhir_run3 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 2 "Parser.mly"
       (string)
# 2802 "Parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _tok = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv103 * _menhir_state * (
# 2 "Parser.mly"
       (string)
# 2811 "Parser.ml"
    )) = _menhir_stack in
    let (_tok : token) = _tok in
    ((match _tok with
    | COMMA ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv97 * _menhir_state * (
# 2 "Parser.mly"
       (string)
# 2820 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let _tok = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv95 * _menhir_state * (
# 2 "Parser.mly"
       (string)
# 2827 "Parser.ml"
        )) = _menhir_stack in
        let (_tok : token) = _tok in
        ((match _tok with
        | STRING _v ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState4 _v
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState4) : 'freshtv96)) : 'freshtv98)
    | RPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv99 * _menhir_state * (
# 2 "Parser.mly"
       (string)
# 2842 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, x) = _menhir_stack in
        let _v : 'tv_separated_nonempty_list_COMMA_STRING_ = 
# 144 "/Users/jackturner/.opam/4.01.0/lib/menhir/standard.mly"
    ( [ x ] )
# 2848 "Parser.ml"
         in
        _menhir_goto_separated_nonempty_list_COMMA_STRING_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv100)
    | _ ->
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        _menhir_env._menhir_shifted <- (-1);
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv101 * _menhir_state * (
# 2 "Parser.mly"
       (string)
# 2858 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv102)) : 'freshtv104)

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
    | MenhirState90 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv33 * _menhir_state * 'tv_fundef) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv34)
    | MenhirState81 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv35 * _menhir_state) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv36)
    | MenhirState74 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv37 * _menhir_state) * (
# 2 "Parser.mly"
       (string)
# 2893 "Parser.ml"
        )) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv38)
    | MenhirState71 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv39 * _menhir_state) * (
# 2 "Parser.mly"
       (string)
# 2902 "Parser.ml"
        )) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv40)
    | MenhirState67 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv41 * _menhir_state) * _menhir_state * 'tv_exp) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv42)
    | MenhirState63 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv43 * _menhir_state) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv44)
    | MenhirState58 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv45 * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv46)
    | MenhirState56 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv47 * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv48)
    | MenhirState54 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv49 * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv50)
    | MenhirState52 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv51 * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv52)
    | MenhirState50 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv53 * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv54)
    | MenhirState48 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv55 * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv56)
    | MenhirState46 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv57 * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv58)
    | MenhirState44 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv59 * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv60)
    | MenhirState41 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv61 * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv62)
    | MenhirState39 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv63 * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv64)
    | MenhirState37 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv65 * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv66)
    | MenhirState32 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv67 * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv68)
    | MenhirState30 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv69 * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv70)
    | MenhirState28 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv71 * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv72)
    | MenhirState25 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv73 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv74)
    | MenhirState24 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv75 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv76)
    | MenhirState21 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv77 * _menhir_state) * (
# 2 "Parser.mly"
       (string)
# 3001 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv78)
    | MenhirState18 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv79 * _menhir_state) * (
# 2 "Parser.mly"
       (string)
# 3010 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv80)
    | MenhirState15 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv81 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv82)
    | MenhirState14 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv83 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv84)
    | MenhirState11 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv85 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv86)
    | MenhirState9 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv87 * _menhir_state * (
# 2 "Parser.mly"
       (string)
# 3034 "Parser.ml"
        )) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_STRING__) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv88)
    | MenhirState4 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv89 * _menhir_state * (
# 2 "Parser.mly"
       (string)
# 3043 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv90)
    | MenhirState2 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv91 * _menhir_state * (
# 2 "Parser.mly"
       (string)
# 3052 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv92)
    | MenhirState0 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv93) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv94)

and _menhir_goto_loption_separated_nonempty_list_FULLSTOP_fundef__ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_loption_separated_nonempty_list_FULLSTOP_fundef__ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv31 * _menhir_state * 'tv_loption_separated_nonempty_list_FULLSTOP_fundef__) = Obj.magic _menhir_stack in
    ((assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
    let _tok = _menhir_env._menhir_token in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv29 * _menhir_state * 'tv_loption_separated_nonempty_list_FULLSTOP_fundef__) = _menhir_stack in
    let (_tok : token) = _tok in
    ((match _tok with
    | EOF ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv25 * _menhir_state * 'tv_loption_separated_nonempty_list_FULLSTOP_fundef__) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv23 * _menhir_state * 'tv_loption_separated_nonempty_list_FULLSTOP_fundef__) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, xs0) = _menhir_stack in
        let _v : (
# 40 "Parser.mly"
       (Ast.program)
# 3081 "Parser.ml"
        ) = let el =
          let xs = xs0 in
          
# 135 "/Users/jackturner/.opam/4.01.0/lib/menhir/standard.mly"
    ( xs )
# 3087 "Parser.ml"
          
        in
        
# 73 "Parser.mly"
                                              ( el )
# 3093 "Parser.ml"
         in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv21) = _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : (
# 40 "Parser.mly"
       (Ast.program)
# 3101 "Parser.ml"
        )) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv19) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : (
# 40 "Parser.mly"
       (Ast.program)
# 3109 "Parser.ml"
        )) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv17) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_1 : (
# 40 "Parser.mly"
       (Ast.program)
# 3117 "Parser.ml"
        )) = _v in
        (Obj.magic _1 : 'freshtv18)) : 'freshtv20)) : 'freshtv22)) : 'freshtv24)) : 'freshtv26)
    | _ ->
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        _menhir_env._menhir_shifted <- (-1);
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv27 * _menhir_state * 'tv_loption_separated_nonempty_list_FULLSTOP_fundef__) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv28)) : 'freshtv30)) : 'freshtv32)

and _menhir_run1 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 2 "Parser.mly"
       (string)
# 3131 "Parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _tok = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv15 * _menhir_state * (
# 2 "Parser.mly"
       (string)
# 3140 "Parser.ml"
    )) = _menhir_stack in
    let (_tok : token) = _tok in
    ((match _tok with
    | LPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv11 * _menhir_state * (
# 2 "Parser.mly"
       (string)
# 3149 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let _tok = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv9 * _menhir_state * (
# 2 "Parser.mly"
       (string)
# 3156 "Parser.ml"
        )) = _menhir_stack in
        let (_tok : token) = _tok in
        ((match _tok with
        | STRING _v ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState2 _v
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv7) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState2 in
            ((let _v : 'tv_loption_separated_nonempty_list_COMMA_STRING__ = 
# 57 "/Users/jackturner/.opam/4.01.0/lib/menhir/standard.mly"
    ( [] )
# 3169 "Parser.ml"
             in
            _menhir_goto_loption_separated_nonempty_list_COMMA_STRING__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv8)
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState2) : 'freshtv10)) : 'freshtv12)
    | _ ->
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        _menhir_env._menhir_shifted <- (-1);
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv13 * _menhir_state * (
# 2 "Parser.mly"
       (string)
# 3183 "Parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv14)) : 'freshtv16)

and top : (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (
# 40 "Parser.mly"
       (Ast.program)
# 3191 "Parser.ml"
) =
  fun lexer lexbuf ->
    let _menhir_env =
      let (lexer : Lexing.lexbuf -> token) = lexer in
      let (lexbuf : Lexing.lexbuf) = lexbuf in
      ((let _tok = lexer lexbuf in
      {
        _menhir_lexer = lexer;
        _menhir_lexbuf = lexbuf;
        _menhir_token = _tok;
        _menhir_startp = lexbuf.Lexing.lex_start_p;
        _menhir_endp = lexbuf.Lexing.lex_curr_p;
        _menhir_shifted = max_int;
        }) : _menhir_env)
    in
    Obj.magic (let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv5) = () in
    ((assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
    let _tok = _menhir_env._menhir_token in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv3) = _menhir_stack in
    let (_tok : token) = _tok in
    ((match _tok with
    | STRING _v ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _v
    | EOF ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = MenhirState0 in
        ((let _v : 'tv_loption_separated_nonempty_list_FULLSTOP_fundef__ = 
# 57 "/Users/jackturner/.opam/4.01.0/lib/menhir/standard.mly"
    ( [] )
# 3224 "Parser.ml"
         in
        _menhir_goto_loption_separated_nonempty_list_FULLSTOP_fundef__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv2)
    | _ ->
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        _menhir_env._menhir_shifted <- (-1);
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState0) : 'freshtv4)) : 'freshtv6))



