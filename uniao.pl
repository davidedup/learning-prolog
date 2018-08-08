:- initialization(main).

uniao([], [], []).  
uniao([], L, L).
uniao(L, [], L).
uniao([H|T], [I|F], Lista) :- uniao(T, F, Lista1), Lista = [H|[I|Lista1]].

main :- 
    read(Lista1),
    read(Lista2),
    uniao(Lista1, Lista2, Resultado),
    write(Resultado),
    halt(0). 

