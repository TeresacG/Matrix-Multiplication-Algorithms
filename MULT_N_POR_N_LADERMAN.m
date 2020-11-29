
%AUTORES: BEATRIZ PEDROSO(95773)
%         TERESA GONÇALVES(95826)
%         TIAGO ESCALDA (95851)
%MC, 1ºSEMESTRE 2020/2021

function  [e]=MULT_N_POR_N_LADERMAN(A,B)
%MULTIPLICAÇÃO DE MATRIZES NXN
%   Função que realiza o produto de 2 matrizes nxn, com n múltiplo de 3
%   aleatórias pelo método de laderman.

C=mat2cell(A, 3*ones(size(A,1)/3,1), 3*ones(size(A,2)/3,1));
D=mat2cell(B, 3*ones(size(B,1)/3,1), 3*ones(size(B,2)/3,1));

m=size(C,1);
n=size(C,2);

E=mat2cell(A, 3*ones(size(A,1)/3,1), 3*ones(size(A,2)/3,1));

if m~=n
end

for i=1:m
    for j=1:m
       E{i,j} = 0;
          for k=1:m
             e=C{i,k};
             f=D{k,j};
             E{i,j}=E{i,j}+ laderman(e,f);
          end
    end
end
F=cell2mat(E);
end