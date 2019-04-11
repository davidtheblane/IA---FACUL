falta(aluno1, 15).
falta(aluno2, 10).
falta(aluno3, 5).
falta(alubo4, 24).
falta(alubo5, 9).

nota(aluno1, 8).
nota(aluno2, 5).
nota(aluno3, 5).
nota(aluno4, 8).
nota(aluno5, 5).





aprovado(A,N,F) :- nota(A,N), falta(A,F),
                (( N>=7), F =<20);
                (N >6, N <7, F =<10).

reprovaFalta(A,N,F) :- nota(A,N), falta(A,F),
                 (F>20).

reprovaNota(A,N,F) :- nota(A,N), falta(A,F),
                    (N<6).


listaAprova :- write("APROVADOS"),nl,
        aprovado(A,N,F),write(A),write(N),write(F),nl,nl.


listaFalta:-  write("REPROVADOS POR FALTA"),nl,
        reprovaFalta(A,N,F),
        write(A),write(N),write(F),nl,nl.

listaNota :- write("REPROVADOS POR NOTA"),nl,
        reprovaNota(A,N,F),write(A),write(N),write(F),nl,nl.




lista :-  write("Escreva seu nome: "),
        read(NOME),nl,
        write(NOME),nl,nl,
        listaAprova,  listaFalta, listaNota.









