:- initialization(main).

in([],A) :- write("Nao achou.").
in([H|T], A) :- H == A, write("Achou").
in([H|T], A) :- in(T,A).

main :-
    read(Palavra),
    read(Letra),
    atom_chars(Palavra, Lista),
    in(Lista, Letra),
    halt(0).
