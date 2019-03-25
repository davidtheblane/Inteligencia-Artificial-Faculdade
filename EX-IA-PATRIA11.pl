% B.C - banco de conhecimentos
% fica_em(CIDADE,PAIS).
fica_em(sao-paulo,brasil).
fica_em(paris,franca).
fica_em(grenoble,franca).
fica_em(toquio,japao).
fica_em(california,usa).

% nasceu_em(PESSOA,CIDADE).
nasceu_em(joao,sao-paulo).
nasceu_em(jean,paris).
nasceu_em(louis,grenoble).
nasceu_em(john,california).
nasceu_em(takashi,toquio).

% M.I: Regras
patria_de(PESSOA, PAIS) :-  nasceu_em(PESSOA, CIDADE),
                            fica_em(CIDADE, PAIS).
