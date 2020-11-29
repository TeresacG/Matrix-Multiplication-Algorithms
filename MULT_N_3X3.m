function  [e]=MULT_N_3X3(n,a,b)
%MULTIPLICAÇÃO DE N MATRIZES 3X3

%   Função que realiza o produto de n matrizes 3x3 aleatórias sucessivamente,
%   tantas quando pretendidas pelo utilizador

c = ALG_TRAD_3X3(a,b);
e=c;

if n(1,1)<=0
end

if n(1,1)==2
end

for i=1:(n-2)
    d=rand(3,3);
    e=ALG_TRAD_3X3(c,d);
    c=e;
    
end

end
