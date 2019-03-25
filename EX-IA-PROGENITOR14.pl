% B.C - Base de conhecimentos

% pai(FILHO, PROGENITOR)
pai(isabel,joao).
pai(pedro,joao).
pai(xico,pedro).
pai(carlos,zeca).
pai(jose,pedro).
pai(xico_jr,xico).
pai(zeca,xico).

% Regras
% neto(NETO, PAI, VO).
neto(NETO, PAI, VO) :- pai(PAI, VO),
                       pai(NETO, PAI).

% bisneto(BISNETO, PAI, VO, BISAVO).
bisneto(BISNETO, PAI, VO, BISAVO) :- pai(VO, BISAVO),
                                   pai(PAI, VO),
                                   pai(BISNETO, PAI).

