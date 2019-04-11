/*pai(FILHO,PROGENITOR)*/
pai(isabel,joao).
pai(pedro,joao).
pai(xico,pedro).
pai(jose,pedro).
pai(lico,xico).
pai(zeca,xico).

/*REGRAS*/
/*neto(NETO,PAI,VO)*/
neto(NETO,PAI,VO):- pai(NETO,PAI),
                    pai(PAI,VO).

bisneto(BISNETO,NETO,PAI,VO):- pai(BISNETO,NETO),
                               pai(NETO,PAI),
                               pai(PAI,VO).

