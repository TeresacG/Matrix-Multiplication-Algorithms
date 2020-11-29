%AUTORES: BEATRIZ PEDROSO(95773)
%         TERESA GONÇALVES(95826)
%         TIAGO ESCALDA (95851)
%MC, 1ºSEMESTRE 2020/2021

function  [c]=MULT_TRAD_N(a,b)
%MULTIPLICAÇÃO DE MATRIZES NXN
%   Função que realiza o produto de 2 matrizes nxn aleatórias pelo algoritmo tradicional,

m=size(a,1);
n=size(a,2);
c=zeros(m,n);

if m~=n
end

for i=1:m 
    for j=1:m 
       c(i,j) = 0;
          for k=1:m
                c(i,j)=c(i,j)+ a(i,k) * b(k,j);
          end
    end
end 

end
