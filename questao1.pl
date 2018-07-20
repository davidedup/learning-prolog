:- initialization(main).

rena(0, "Vigoroso").
rena(1, "Dançarino").
rena(2, "Saltador").
rena(3, "Raposa").
rena(4, "Cometa").
rena(5, "Cupido").
rena(6, "Perito").
rena(7, "Ligeiro").
rena(8, "Rudolph").

sorteio(Number1, Number2, Number3, Number4, Number5, Number6, Number7, Number8, Number9, R) :- X is (Number1+Number2+Number3+Number4+Number5+Number6+Number7+Number8+Number9-1), R is mod(X,9).  

readInt(Number) :- 
    read_line_to_codes(user_input, Codes),
    string_to_atom(Codes, Atom),
    atom_number(Atom, Number).

main:-
    readInt(Number1),
    readInt(Number2),
    readInt(Number3),
    readInt(Number4),
    readInt(Number5),
    readInt(Number6),
    readInt(Number7),
    readInt(Number8),
    readInt(Number9),
    sorteio(Number1, Number2, Number3, Number4, Number5, Number6, Number7, Number8, Number9, Num),
    rena(Num, Rena),
    write(Rena). 
