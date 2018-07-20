:- initialization(main).

frequencia([], Letra, 0).
frequencia([H|T], Letra, Freq) :- H == Letra, frequencia(T, Letra, Freq1), Freq is Freq1 + 1.
frequencia([H|T], Letra, Freq) :- frequencia(T, Letra, Freq).


main :-
    read(Palavra),
    read(Letra),
    atom_chars(Palavra, Lista),
    frequencia(Lista, Letra, Freq),
    write(Freq).