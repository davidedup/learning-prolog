% DNA- ATGCCGAAATTTGCG
% RNA- UACGGCUUUAAACGC

:- initialization(main).

dna_rna([]).
dna_rna([H|T]) :- H == 'A', write("U"), dna_rna(T).
dna_rna([H|T]) :- H == 'T', write("A"), dna_rna(T).
dna_rna([H|T]) :- H == 'G', write("C"), dna_rna(T).
dna_rna([H|T]) :- H == 'C', write("G"), dna_rna(T).

main :-
    read_line_to_string(user_input, Dna),
    atom_chars(Dna, Lista),
    dna_rna(Lista).