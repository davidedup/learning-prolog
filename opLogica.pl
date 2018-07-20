operacaoAnd(true, true, true, true).
operacaoAnd(_, _, _, false).

operacaoOr(false, false, false, false).
operacaoOr(_, _, _, true).

opLogica(A,B,C,O,R) :- O == and, operacaoAnd(A,B,C,R).
opLogica(A,B,C,O,R) :- O == or, operacaoOr(A,B,C,R).

:- initialization(main).

main :-
	repeat,
	read(A),
	read(B),
	read(C),
	read(O),
	opLogica(A,B,C,O,R),
	write(R), nl,
	halt(0).