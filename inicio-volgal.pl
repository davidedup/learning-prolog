:- initialization(main).

vogal('a').
vogal('e').
vogal('i').
vogal('o').
vogal('u').

imprime_vogal(P) :- atom_chars(P, [H|_]), vogal(H), writeln("s").
imprime_vogal(P) :- writeln("n").

main :-
	read_line_to_string(user_input, Palavra1),
	read_line_to_string(user_input, Palavra2),
	read_line_to_string(user_input, Palavra3),
	read_line_to_string(user_input, Palavra4),
	read_line_to_string(user_input, Palavra5),
	imprime_vogal(Palavra1),
	imprime_vogal(Palavra2),
	imprime_vogal(Palavra3),
	imprime_vogal(Palavra4),
	imprime_vogal(Palavra5),
	halt(0).