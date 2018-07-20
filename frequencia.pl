:- initialization(main).



main :-
    read(Palavra),
    read(Letra),
    atom_chars(Palavra, Lista),
    frequencia(Lista, Letra, Freq),
    write(Freq).