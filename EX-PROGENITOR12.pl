/*genitor(PROGENITOR, FILHO).*/
genitor(sidney, fernando).
genitor(renata, fernando).
genitor(sidney, roberto).
genitor(renata, roberto).
genitor(carlos, marcelo).
genitor(terezinha, marcelo).
genitor(carlos, roberto).
genitor(terezinha, ana).

mulher(terezinha).
mulher(renata).
mulher(ana).

homem(fernando).
homem(marcelo).
homem(carlos).
homem(roberto).



irmaos(GENITOR, F1, F2) :- genitor(GENITOR, F1),
                           genitor(GENITOR, F2),
                                   homem(F1),
                                   homem(F2),
                                   F1\=F2.
%PESQUISA
%listing(irmaos(GENITOR, F1, F2)).
%irmaos(sidney, F1, F2).
%irmaos(GENITOR, F1, F2)

irmas(GENITOR,F1,F2) :- genitor(GENITOR, F1),
                        genitor(GENITOR,F2),
                        mulher(F1),
                        mulher(F2),
                        F1\=F2.


unico(GENITOR,F1) :- genitor(GENITOR,F1),
                     not(irmaos(GENITOR,F1,_)),
                         homem(F1),
                         F1\=_.






% genitor(NOME) :- write("Qual seu nome?"), write(NOME), write("Bom
% Dia"), nl,


