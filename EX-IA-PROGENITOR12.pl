/* genitor(PROGENITOR, FILHO). */

genitor(sidney, fernando). genitor(sidney, roberto).
genitor(renata, fernando). genitor(renata, roberto).
genitor(carlos, marcelo). genitor(carlos, ana).
genitor(terezinha, marcelo). genitor(terezinha, ana).

mulher(terezinha).
mulher(renata).
mulher(ana).

homem(fernando).
homem(marcelo).
homem(carlos).
homem(roberto).

irmao(FILHO1, FILHO2, GENITOR) :-
    genitor(GENITOR, FILHO1),
    genitor(GENITOR, FILHO2),
    homem(FILHO1),
    homem(FILHO2),
    FILHO2 \= FILHO1.

irma(FILHA1, FILHA2, GENITOR) :-
    genitor(GENITOR, FILHA1),
    genitor(GENITOR, FILHA2),
    mulher(FILHA1),
    mulher(FILHA2),
    FILHA2 \= FILHA1.

filho_unico(FILHO1, GENITOR) :-
    not(irmao(FILHO1, _, GENITOR)),
    genitor(FILHO1, GENITOR),
    homem(FILHO1).

all :- irmao(FILHO1, FILHO2, _GENITOR),
       write(FILHO1), write('  '), nl,
       write(FILHO2), write('  '), nl,
       fail.
       all.
