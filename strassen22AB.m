%AUTORES: BEATRIZ PEDROSO(95773)
%         TERESA GONÇALVES(95826)
%         TIAGO ESCALDA (95851)
%MC, 1ºSEMESTRE 2020/2021

function C = strassen22AB(A,B,M)
%   FUNÇÃO MULTIPLICADORA DE MATRIZES
%   Este código tem como função multiplicar matrizes 2 por 2
%   Para cumprir o objetivo foram desenvolvidos 3 diferentes métodos
%   Método 1 - Algoritmo de Strassen (Método em estudo)
%   Método 2 - Multplicação feita pelo MATLAB
%   Método 3 - Método tradicional de multiplicação de matrizes
%   A e B são as matrizes usadas na multiplicação, M é o método escolhido

if M==1 % Strassen
    M1 = (A(1,1)+ A(2,2))*(B(1,1)+B(2,2));
    M2 = (A(2,1)+ A(2,2))*(B(1,1));
    M3 = (A(1,1))*(B(1,2)-B(2,2));
    M4 = (A(2,2))*(B(2,1)-B(1,1));
    M5 = (A(1,1)+ A(1,2))*(B(2,2));
    M6 = (A(2,1)- A(1,1))*(B(1,1)+B(1,2));
    M7 = (A(1,2)- A(2,2))*(B(2,1)+B(2,2));
    C  = [ M1+M4-M5+M7  M3+M5;  M2+M4  M1+M3-M2+M6 ];
end
if M==2 % Multiplicação do matlab
    C = A*B;
end
if M==3 % Método tradicional escrito em código
    M1 = (A(1,1)*B(1,1))+(A(1,2)*B(2,1));
    M2 = (A(1,1)*B(1,2))+(A(1,2)*B(2,2));
    M3 = (A(2,1)*B(1,1))+(A(2,2)*B(2,1));
    M4 = (A(2,1)*B(1,2))+(A(2,2)*B(2,2));
    C  = [M1   M2;  M3   M4];
end    
end

