fatorial(0, 1).
fatorial(X, Y) :- X1 is X-1, fatorial(X1,Y1),  Y is X * Y1. 

:- initialization(main).

main :-
	read(X),
	fatorial(X, Resp),
	write(Resp),nl,
	halt(0).