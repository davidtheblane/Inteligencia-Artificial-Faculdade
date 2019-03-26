%BC : Lista de fatos
%mae(NOME_FILHO,NOME_MAE).

mae(antonio,maria).
mae(pedro,maria).
mae(junior,ana).
mae(andre,isabel).
mae(ricardo,isabel).
mae(elaine,claudete).

%homem(NOME).

homem(antonio).
homem(ricardo).
homem(pedro).
homem(carlos).
homem(junior).
homem(estevao).
homem(andre).
homem(jose).
homem(enrique).

%pai(NOME_FILHO,NOME_PAI).

pai(andre,carlos).
pai(enrique,jose).
pai(junior,estevao).
pai(pedro,jose).
pai(antonio,jose).
pai(elaine,wilson).

%mulher(NOME)
mulher(isabel).
mulher(maria).
mulher(ana).
mulher(elaine).

%irmao_pai(NOME_FILHO1, NOME_FILHO2, NOME_PAI)

irmao_pai(NOME_FILHO1, NOME_FILHO2, NOME_PAI):-
    homem(NOME_FILHO1),
    homem(NOME_FILHO2),
    pai(NOME_FILHO1, NOME_PAI),
    pai(NOME_FILHO2, NOME_PAI),
    NOME_FILHO1 \= NOME_FILHO2.

%irmao_mae(NOME_FILHO1, NOME_FILHO2, NOME_MAE)

irmao_mae(NOME_FILHO1, NOME_FILHO2, NOME_MAE) :-
    homem(NOME_FILHO1),
    homem(NOME_FILHO2),
    mae(NOME_FILHO1, NOME_MAE),
    mae(NOME_FILHO2, NOME_MAE),
    NOME_FILHO1 \= NOME_FILHO2.

%casal(NOME_FILHO1, NOME_MAE, NOME_PAI)

casal(NOME_FILHO1, NOME_MAE, NOME_PAI) :-
    homem(NOME_PAI),
    mulher(NOME_MAE),
    pai(NOME_FILHO1, NOME_PAI),
    mae(NOME_FILHO1, NOME_MAE).


%irmao_casal(NOME_FILHO1, NOME_FILHO2, NOME_PAI, NOME_MAE)

irmao_casal(NOME_FILHO1, NOME_FILHO2, NOME_MAE, NOME_PAI) :-
    homem(NOME_FILHO1),
    homem(NOME_FILHO2),
    casal(NOME_FILHO1, NOME_MAE, NOME_PAI),
    casal(NOME_FILHO2, NOME_MAE, NOME_PAI),
    NOME_FILHO1 \= NOME_FILHO2,
    NOME_FILHO2 \= NOME_FILHO1.

%filho_unico_pai(FILHO, PAI)
filho_unico_pai(FILHO, PAI) :-
    homem(FILHO),
    pai(FILHO, PAI),
    not(irmao_pai(FILHO, _NOME_FILHO2, PAI)).

%filho_unico_mae(FILHO, MAE)
filho_unico_mae(FILHO, MAE) :-
    homem(FILHO),
    mae(FILHO, MAE),
    not(irmao_mae(FILHO, _NOME_FILHO2, MAE)).


%filho_unico(NOME_FILHO1, NOME_PROGENITOR)

filho_unico(NOME_FILHO1, NOME_PROGENITOR) :-
    homem(NOME_FILHO1),
    filho_unico_pai(NOME_FILHO1, NOME_PROGENITOR);
    filho_unico_mae(NOME_FILHO1, NOME_PROGENITOR).


%filho_unico_casal(NOME_FILHO1, NOME_PAI, NOME_MAE)

filho_unico_casal(NOME_FILHO1, NOME_MAE, NOME_PAI) :-
    homem(NOME_FILHO1),
    filho_unico_mae(NOME_FILHO1, NOME_MAE),
    filho_unico_pai(NOME_FILHO1, NOME_PAI).

