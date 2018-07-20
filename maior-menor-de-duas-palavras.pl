:- initialization(main).

tamanho([], 0).
tamanho([_|T], Tamanho) :-
    tamanho(T, Tamanho1),
    Tamanho is 1 + Tamanho1.

maior(A, B) :-
	atom_chars(A, AL),
	atom_chars(B, BL),
	tamanho(AL, TA),
	tamanho(BL, TB),
	TA < TB,
	writeln(A),
	writeln(B).
maior(A, B) :-
	atom_chars(A, AL),
	atom_chars(B, BL),
	tamanho(AL, TA),
	tamanho(BL, TB),
	TA == TB,
	writeln(A),
	writeln(A).
maior(A, B) :-
	atom_chars(A, AL),
	atom_chars(B, BL),
	tamanho(AL, TA),
	tamanho(BL, TB),
	TA > TB,
	writeln(B),
	writeln(A).

main :-
    read_line_to_string(user_input, Palavra1),
    read_line_to_string(user_input, Palavra2),
    maior(Palavra1, Palavra2),
    halt(0).