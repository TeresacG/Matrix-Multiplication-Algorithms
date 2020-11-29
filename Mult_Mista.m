%AUTORES: BEATRIZ PEDROSO(95773)
%         TERESA GONÇALVES(95826)
%         TIAGO ESCALDA (95851)
%MC, 1ºSEMESTRE 2020/2021

function [CS]=Mult_Mista(A,B)

%A=rand(n);
%B=rand(n);
n=length(A);
CS=zeros(size(A));
if rem(n,2)==0
    
    for i= 1:2:n-1
        for j=1:2:n-1
            
            Aux1(1,1)=A(i,j);
            Aux1(2,1)=A(i+1,j);
            Aux1(1,2)=A(i,j+1);
            Aux1(2,2)=A(i+1,j+1);
            for k=1:2:n-1
                Aux2(1,1)=B(j,k);
                Aux2(2,1)=B(j+1,k);
                Aux2(1,2)=B(j,k+1);
                Aux2(2,2)=B(j+1,k+1);
                
                [CSaux] = strassen22AB(Aux1,Aux2,1);
              
                CS(i,k)=CS(i,k)+CSaux(1,1);
                CS(i+1,k)=CS(i+1,k)+CSaux(2,1);
                CS(i,k+1)=CS(i,k+1)+CSaux(1,2);
                CS(i+1,k+1)=CS(i+1,k+1)+CSaux(2,2);

            end
           
        end
      
    end
   
end


