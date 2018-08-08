:- initialization(main).

frequencia([], Letra, 0).
frequencia([H|T], Letra, Freq) :- H == Letra, frequencia(T, Letra, Freq1), Freq is Freq1 + 1.
frequencia([H|T], Letra, Freq) :- frequencia(T, Letra, Freq).

soma([], 0).
soma([H|T],Lista, Soma) :- soma(T, Soma1), frequencia(Lista, H, Fre), Fre == 1, Soma is Soma1 + Soma.
soma([H|T],Lista, Soma) :- soma(T, Soma1), frequencia(Lista, H, Fre), Fre > 1.

zero(0).

main :- 
    read(Lista),
    zero(Resultado),
    soma(Lista, Lista, Resultado),
    write(Resultado),
    halt(0). 
