%BC : Lista de fatos

%pai(NOME_FILHO, NOME_PAI)

pai(isabel,joao).
pai(jose,pedro).
pai(pedro,joao).
pai(xico,pedro).
pai(zeca,xico).
pai(lico, xico).
pai(carlos,zeca).

%neto(NOME_NETO, NOME_PAI, NOME_VO)

neto(NOME_NETO, NOME_PAI, NOME_VO) :-
    pai(NOME_NETO, NOME_PAI),
    pai(NOME_PAI, NOME_VO).

%bisneto(NOME_BISNETO, NOME_NETO, NOME_PAI, NOME_VO)

bisneto(NOME_BISNETO, NOME_PAI, NOME_VO, NOME_BISAVO) :-
    pai(NOME_BISNETO, NOME_PAI),
    pai(NOME_PAI, NOME_VO),
    pai(NOME_VO, NOME_BISAVO).
