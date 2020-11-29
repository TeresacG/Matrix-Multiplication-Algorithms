%AUTORES: BEATRIZ PEDROSO(95773)
%         TERESA GONÇALVES(95826)
%         TIAGO ESCALDA (95851)
%MC, 1ºSEMESTRE 2020/2021

function  C=strassen22nvezes(N,M)
%MULTIPLICAÇÃO DE N MATRIZES 2X2 ALEATÓRIAS
%   Esta função multplica N matrizes aleatórias 2X2 de acordo com o
%   método escolhido pelo utilizador.
%   Método 1 - Algoritmo de Strassen (Método em estudo)
%   Método 2 - Multplicação feita pelo MATLAB
%   Método 3 - Método tradicional de multiplicação de matrizes
%   O número de matrizes multplicadas (N) é também escolhido pelo
%   utilizador.

A=rand(2);
for i=2:N
    B=rand(2);
    C=strassen22AB(A,B,M);
    A=C;
end

end