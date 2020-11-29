
//**********************************************************************************//
// ** ALGORITMO COPPERSMITH-WINOGRAD ** //
//**********************************************************************************//
/*
Argumentos: 2 matrizes quadradas;
Output: 1 matriz quadrada, correspondente ao produto dos argumentos da função;
A função invoca outras duas funções, (Produto_Negativo_Linhas(A,Num_Linhas_A,Num_Linhas_B) e Produto_Negativo_Colunas(B,Num_Colunas_B,Num_Linhas_B)).
Estas são definidas mais adiante.
*/

function matriz_produto = produto_algoritmo_coppersmith_winograd(A,B)

Num_Linhas_A = size(A,1);
Num_Linhas_B = size(B,1);
Num_Colunas_B = size(B,2);
PNL = Produto_Negativo_Linhas(A,Num_Linhas_A,Num_Linhas_B);
PNC = Produto_Negativo_Colunas(B,Num_Colunas_B,Num_Linhas_B);
matriz_produto = zeros(Num_Linhas_A,Num_Colunas_B);
  for i = 1:Num_Linhas_A
      for j = 1:Num_Linhas_B
          matriz_produto(i,j) = PNL(i) + PNC(j);
          for k = 1:2:Num_Colunas_B-1
              matriz_produto(i,j) = matriz_produto(i,j)+(A(i,k+1)+B(k,j))*(A(i,k)+B(k+1,j));
          end
      end
  end
/*NOTA: O código funciona para matrizes cujo número de linhas ou
colunas é par. Não está a operar de forma correta quando este não é o caso.
No entanto, o erro é de difícil deteção dada a complexidade
do algoritmo e, consequentemente, do código em questão.*/
  if rem(Num_Colunas_B,2) %% Caso o número de linhas ou colunas das matrizes for ímpar
     for i = 1:Num_Linhas_A
        for j = 1:Num_Linhas_B
            matriz_produto(i,j) = matriz_produto(i,j)+ A(i,Num_Colunas_B-1)*B(Num_Colunas_B-1,j);
        end
     end
  end
end


/*
Argumentos: 1 matriz quadrada e respetivo número de linhas e colunas;
Output: Vetor coluna
*/
function PNC = Produto_Negativo_Colunas(matriz, Num_Linhas, Num_Colunas)
    PNC = zeros(Num_Linhas, 1);
    for j = 1:2:Num_Colunas-1
       for i = 1:Num_Linhas
            PNC(i) = PNC(i) - matriz(j,i)*matriz(j+1,i);
       end
    end
end

/*
Argumentos: 1 matriz quadrada e respetivo número de linhas e colunas;
Output: Vetor coluna
*/
function PNL = Produto_Negativo_Linhas(matriz, Num_Linhas, Num_Colunas)
  PNL = zeros(Num_Linhas, 1);
  for i = 1:Num_Linhas
    for j = 1:2:Num_Colunas-1
      PNL(i) = PNL(i) - matriz(i,j)*matriz(i,j+1);
    end
  end
end


//Comparação Algoritmo de Coppersmith-Winograd com o Método Tradicional
  N = 20;
  t = zeros(N,1);
  n = round(10.^(0:((3-0)/(N-1)):3));
  for i = 1:length(n)
    A=rand(n(i),n(i));
    B=rand(n(i),n(i));
    tic;
    produto_algoritmo_coppersmith_winograd(A,B);
    t(i)=toc;
  end
  save("data.mat", 't', 'n');
  logn=log10(n);
  logt=log10(t);
  figure;
  plot(logn, logt);    
  hold on;
  N = 20;
  t = zeros(N,1);
  n = round(10.^(0:((3-0)/(N-1)):3));
  for i = 1:length(n)
    A=rand(n(i),n(i));
    B=rand(n(i),n(i));
    tic;
    tradicional(A,B);
    t(i)=toc;
  end
  save("data.mat", 't', 'n');
  logn=log10(n);
  logt=log10(t);
  plot(logn, logt);