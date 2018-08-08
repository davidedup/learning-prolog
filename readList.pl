:- initialization(main).

main :-
   read_line_to_codes(user_input, Input),
   atom_codes(IA, Input),
   atomic_list_concat(Strings, ' ', IA),
   maplist(atom_number, Strings, X),
   write(X).