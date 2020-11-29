%AUTORES: BEATRIZ PEDROSO(95773)
%         TERESA GONÇALVES(95826)
%         TIAGO ESCALDA (95851)
%MC, 1ºSEMESTRE 2020/2021

function C = strassen(A, B)

%STRASSEN  ALgoritmo rápido de multplicação de matrizes (Strassen)
%          C = STRASSEN(A, B), onde A e B são matrizes de dimensão
%          2^n, e C = A*B.
%          Este algoritmo é usado recursivamente até atingir uma dimensão
%          de multiplicação de escalares. 

n = length(A);
if n ~= 2^( log2(n) )
   error('A dimensão da matriz tem de ser uma potência de 2')
end

if n <= 1 % Escalar
   C = A*B;
else % Algoritmo de Strassen
   m = n/2; i = 1:m; j = m+1:n;
   P1 = strassen( A(i,i)+A(j,j), B(i,i)+B(j,j));
   P2 = strassen( A(j,i)+A(j,j), B(i,i));
   P3 = strassen( A(i,i), B(i,j)-B(j,j));
   P4 = strassen( A(j,j), B(j,i)-B(i,i));
   P5 = strassen( A(i,i)+A(i,j), B(j,j));
   P6 = strassen( A(j,i)-A(i,i), B(i,i)+B(i,j));
   P7 = strassen( A(i,j)-A(j,j), B(j,i)+B(j,j));
   C = [ P1+P4-P5+P7  P3+P5;  P2+P4  P1+P3-P2+P6 ];
end