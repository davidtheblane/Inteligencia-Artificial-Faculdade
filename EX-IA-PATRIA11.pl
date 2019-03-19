%BC : Lista de fatos
%fica_em(CIDADE, PAIS)

fica_em(sao-paulo, brasil).
fica_em(paris,franca).


%nasceu_em(PESSOA, CIDADE)
nasceu_em(joao, sao-paulo).
nasceu_em(jean, paris).


%M.I: Regras

patria_de(PESSOA,PAIS):- fica_em(CID, PAIS),
                         nasceu_em(PESSOA, CID).
