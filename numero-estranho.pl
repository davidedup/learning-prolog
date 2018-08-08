:- initialization(main).

max(X,[X]).
max(X,[Y|R]):- max(X,R), X > Y, !.
max(Y,[Y|_]).

min(X,[X]).
min(X,[Y|R]):- min(X,R), X < Y, !.
min(Y,[Y|_]).

somatorio(0,[]).
somatorio(X,[Y|R]):- somatorio(S,R), X is S+Y.

tamanho([], 0).
tamanho([_|T], S):- tamanho(T, G), S is 1 + G.

numMagico(Resultado, Soma, Tam, Max, Min) :- Resultado is (Soma/Tam) * (Max - Min).

main :- 
    read(Lista), 
    max(Max, Lista),
    min(Min, Lista),
    somatorio(Soma, Lista),
    tamanho(Lista, Tam),
    numMagico(Resultado, Soma, Tam, Max, Min),
    write(Resultado),
    halt(0). 