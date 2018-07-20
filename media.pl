media(A, B, Situacao) :- (((A+B) / 2) >= 7.0), Situacao = aprovado.
media(A, B, Situacao) :- (((A+B) / 2) < 7.0), Situacao = reprovado.

:- initialization(main).

main :-
	read(A),
	read(B),
	media(A, B, Situacao),
	write(Situacao),nl,
	halt(0).