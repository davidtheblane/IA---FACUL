/*B A S E  DE DADOS*/

/*mae(NOME_FILHO,NOME_MAE)*/
mae(antonio,maria).
mae(junior,ana).
mae(ricardo,isabel).
mae(pedro,maria).
mae(andre,isabel).
mae(elaine,claudete).

/*homem(NOME)*/
homem(antonio).
homem(pedro).
homem(junior).
homem(andre).
homem(ricardo).
homem(carlos).
homem(estevao).
homem(jose).

/*pai(NOME_FILHO,NOME_PAI)*/
pai(andre,carlos).
pai(junior,estevao).
pai(antonio,jose).
pai(enrique,jose).
pai(pedro,jose).
pai(elaine,wilson).

/*MULHER(NOME)*/
mulher(isabel).
mulher(ana).
mulher(maria).
mulher(elaine).


/*R E G R A S */

/*irmaos_pai(FILHO,FILHO,PAI)*/

irmaos_pai(F1,F2,PAI):- pai(F1,PAI),
                          pai(F2,PAI),
                          F1\=F2,
                          homem(F1),
                          homem(F2).

/*irmaos_mae(FILHO,FILHO,MAE)*/
irmaos_mae(F1,F2,MAE):- mae(F1,MAE),
                        mae(F2,MAE),
                        F1\=F2,
                        homem(F1),
                        homem(F2).


/*irmaos_casal(FILHO,FILHO,PAI,MAE)*/
irmaos_casal(F1,F2,PAI,MAE):- irmaos_pai(F1,F2,PAI),
                              irmaos_mae(F1,F2,MAE),
                              F1\=F2,
                              homem(F1),
                              homem(F2).


filho_unico(F1,F2,PAI,MAE):- not(irmaos_pai(F1,F2,PAI)),
                             not(irmaos_mae(F1,F2,MAE)),
                             F1\=F2,
                             homem(F1),
                             homem(F2).


















