
%AUTORES: BEATRIZ PEDROSO(95773)
%         TERESA GONÇALVES(95826)
%         TIAGO ESCALDA (95851)
%MC, 1ºSEMESTRE 2020/2021

function  [e]=MULT_N_LADERNAN(n,a,b)

c = laderman(a,b);

for i=1:n
    d=[1 2 3;1 2 3; 1 2 3];
    e=laderman(c,d);
    c=e;    
end

end
