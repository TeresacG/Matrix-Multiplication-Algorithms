function  [e]=MULT_N_2X2(n,a,b)
%MULTIPLICAÇÃO DE N MATRIZES 2X2
%   Função que realiza o produto de n matrizes 2x2 aleatórias sucessivamente,
%   tantas quando pretendidas pelo utilizador

c = ALG_TRAD_2X2(a,b);
e=c;

if n(1,1)<=0
end

if n(1,1)==2
end

for i=1:(n-2)
    d=rand(2,2);
    e=ALG_TRAD_2X2(c,d);
    c=e;
    
end

end

