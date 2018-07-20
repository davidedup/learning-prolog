:- initialization(main).

primeira_letra([H|T], H).

ultima_letra([H|[]], H).
ultima_letra([H|T], U) :- ultima_letra(T, U).

rima(Ap, Au, Bp, Bu) :- Ap == Bp, Au == Bu, writeln("S").
rima(Ap, Au, Bp, Bu) :- writeln("N").

main :-
	read_line_to_string(user_input, Palavra1),
    read_line_to_string(user_input, Palavra2),
    atom_chars(Palavra1, As),
	atom_chars(Palavra2, Bs),
	primeira_letra(As, Ap),
	primeira_letra(Bs, Bp),
	ultima_letra(As, Au),
	ultima_letra(Bs, Bu),
	rima(Ap, Au, Bp, Bu),
    halt(0).