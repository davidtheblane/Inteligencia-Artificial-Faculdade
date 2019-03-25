% B.C - Base de conhecimentos.
% homem(NOME).
homem(enrique).
homem(antonio).
homem(ricardo).
homem(pedro).
homem(carlos).
homem(junior).
homem(estevao).
homem(andre).
homem(jose).

% mulher(NOME).
mulher(isabel).
mulher(maria).
mulher(ana).
mulher(elaine).

% mae(NOME_FILHO, NOME_MAE).
mae(antonio,maria).
mae(pedro,maria).
mae(junior,ana).
mae(andre,isabel).
mae(ricardo,isabel).
mae(elaine,claudete).

% pai(NOME_FILHO, NOME_PAI).
pai(andre,carlos).
pai(enrique,jose).
pai(junior,estevao).
pai(pedro,jose).
pai(antonio,jose).
pai(elaine,wilson).

% Regras

irmaos_pai(FILHO, FILHO2, PAI) :- pai(FILHO, PAI),
                                  pai(FILHO2, PAI),
                                  homem(FILHO),
                                  homem(FILHO2),
                                  FILHO \= FILHO2.

irmaos_mae(FILHO, FILHO2, MAE) :- mae(FILHO, MAE),
                                  mae(FILHO2, MAE),
                                  homem(FILHO),
                                  homem(FILHO2),
                                  FILHO \= FILHO2.

irmaos_casal(FILHO, FILHO2, PAI, MAE) :- irmaos_pai(FILHO, FILHO2, PAI),
                                         irmaos_mae(FILHO, FILHO2, MAE),
                                         homem(FILHO),
                                         homem(FILHO2),
                                         FILHO \= FILHO2.

filho_unico_pai(FILHO, PAI) :- homem(FILHO),
                               pai(FILHO, PAI),
                               not(irmaos_pai(FILHO, FILHO2, PAI)).

filho_unico_mae(FILHO, MAE) :- homem(FILHO),
                               mae(FILHO, MAE),
                               not(irmaos_mae(FILHO, FILHO2, MAE)).

filho_unico(FILHO, PROGENITOR) :- homem(FILHO),
                                  filho_unico_pai(FILHO, PROGENITOR);
                                  filho_unico_mae(FILHO, PROGENITOR).
