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
    pai(NOME_FILHO1, NOME_PAI),
    pai(NOME_FILHO2, NOME_PAI).

%irmao_mae(NOME_FILHO1, NOME_FILHO2, NOME_MAE)

irmao_mae(NOME_FILHO1, NOME_FILHO2, NOME_MAE) :-
    mae(NOME_FILHO1, NOME_MAE),
    mae(NOME_FILHO2, NOME_MAE).

%casal(NOME_FILHO1, NOME_MAE, NOME_PAI)

casal(NOME_FILHO1, NOME_MAE, NOME_PAI) :-
    pai(NOME_FILHO1, NOME_PAI),
    mae(NOME_FILHO1, NOME_MAE).


%irmao_casal(NOME_FILHO1, NOME_FILHO2, NOME_PAI, NOME_MAE)

irmao_casal(NOME_FILHO1, NOME_FILHO2, NOME_MAE, NOME_PAI) :-
    casal(NOME_FILHO1, NOME_MAE, NOME_PAI),
    casal(NOME_FILHO2, NOME_MAE, NOME_PAI).

%filho_unico(NOME_FILHO1, NOME_PAI, NOME_MAE)

filho_unico(NOME_FILHO1, NOME_PAI, NOME_MAE) :-
    casal(NOME_FILHO1, NOME_MAE, NOME_PAI).
