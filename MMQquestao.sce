x = [0.4 0.6 1 1.4 1.8 2.2]' //dados vetor x
y = [1.4 2 2.2 2.8 3 3.2]'  // vetor y 

plot(x,y,'o')    //pontos plotados

A = [x.^1 x.^2]  //Base do espaço da funçao linearizada, muda-se manualmente

ATA = A'*A  //operaçoes nescessarias 
ATc = A'*y  //para fazer o sist. impossivel, possivel

//==========FUNÇOES PARA RESOLVER O SIST. DE EQS==============
function x = triangularInferior(L,b)
    //funçao  para resolver sistemas triagulares inferiores
    n = length(b)
    x(1) = b(1)/L(1,1)
    for i=2:n 
        x(i)= (b(i)- L(i,1:i-1)*x(1:i-1))/L(i,i)
    end
endfunction

function x = triangularSuperior(U,b)
    //funçao para resolver sistemas triagulares superiores
    n = length(b)
    x(n) = b(n)/U(n,n)
    for i=n-1:-1:1 
        x(i)= (b(i)- U(i,i:$)*x(i:$))/U(i,i)
    end
endfunction

function [L,U] =  decomposicaoLU(A)
    //funçao para decompor uma matriz em L e U
    s = size(A)
    n = s(1)
    L = eye(n,n)
    for j=1:n-1
        pivo = A(j,j)
        for i = j+1:n
            fator = A(i,j)/pivo
            A(i,:)= A(i,:) - fator*A(j,:)
            L(i,j)= fator
        end
    end
    U = A
endfunction

function [y] = gauss(A,b)
    //eliminaçao de gauss(devolve a matriz aumentada)
    s = size(A)
    A = [A b]
    n = s(1)
    for j=1:n-1
        pivo = A(j,j)
        for i = j+1:n
           
            fator = A(i,j)/pivo
            A(i,:)= A(i,:) - fator*A(j,:)
            disp(A) 
        end
    end
    y = A
endfunction

function x1 = sistemaLinear(A,b)
    // resolve o sistema LU x = b
    [L,U] = decomposicaoLU(ATA)
    y = triangularInferior(L,b)
    x1 = triangularSuperior(U,y)
endfunction
//=============================================================


//por LU
xc = sistemaLinear(ATA,ATc) 

//Por GAUSS
//g = gauss(ATA,ATc);
//T= g(:,1:$-1);  //separando 
//q = g(:,$);     //a matriz aumentada
//xc = triangularSuperior(T,q)



t = -10:.1:10; //INTERVALO PARA O PLOT DO AJUSTE

st =xc(1)*(t.^1) + xc(2)*(t.^2); //FUNÇAO DE AJUSTE


plot(t,st)      //ajuste feito

e = A*xc - y //vetor erro
erMin = e'*e //erro minimo quadratico 
