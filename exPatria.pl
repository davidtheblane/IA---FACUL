/*L I S T A */
/*fica-em(CIDADE,PAIS)*/

fica_em(sao-paulo,brasil).
fica_em(paris,franca).
fica_em(grenoble,franca).
fica_em(toquio,japao).
fica_em(california,usa).

/*nasceu-em(PESSOA,CIDADE)*/
nasceu_em(joao,sao-paulo).
nasceu_em(jean,paris).
nasceu_em(louis,grenoble).
nasceu_em(john,california).
nasceu_em(takashi,toquio).

/*R E G R A S*/

/*patria-de(PESSOA,PAIS)*/
patria_de(PESSOA,PAIS):- fica_em(CIDADE,PAIS),
                         nasceu_em(PESSOA,CIDADE).





