:- initialization(main).

frequencia([], Letra, 0).
frequencia([H|T], Letra, Freq) :- H == Letra, frequencia(T, Letra, Freq1), Freq is Freq1 + 1.
frequencia([H|T], Letra, Freq) :- frequencia(T, Letra, Freq).

isograma([], Lista) :- write("Nao eh isograma").

isograma([H|T], Lista) :- frequencia(Lista, H, Fre),
    					  Fre > 1,
                          write("Eh isograma").

isograma([H|T], Lista) :- isograma(T, Lista).

main :-
    read(Palavra),
    atom_chars(Palavra, Lista),
    isograma(Lista, Lista),
    halt(0). 