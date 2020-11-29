 
%AUTORES: BEATRIZ PEDROSO(95773)
%         TERESA GONÇALVES(95826)
%         TIAGO ESCALDA (95851)
%MC, 1ºSEMESTRE 2020/2021

function [f] = laderman_3nx3n_recursivo (A,B)
%ALGORITMO DE LADERMAN
%   Função que traduz o algoritmo de Laderman para a multiplicação de
%   matrizes n^3xn^3 recursivo

C = mat2cell(A, 3*ones(size(A,1)/3,1), 3*ones(size(A,2)/3,1));
Result=reshape(A,9,[]);

D = mat2cell(B, 3*ones(size(B,1)/3,1), 3*ones(size(B,2)/3,1));
disp(C)
e=laderman_matrizes(Result,D);
f=cell2mat(e);


  end