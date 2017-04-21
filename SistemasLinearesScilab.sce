//T = ceil(grand(4,4,'unf',-10,10));

A = [-4 -8 4 10  ;  -32 -54 25 80  ;  36 142 -88 -99  ;  28 126 -95 -120];
b = [8  ;  88  ;  84  ;  48]


A = [A b] 
L = eye(4,4)

// j = 1
pivo = A(1,1)

fator = A(2,1)/pivo
A(2,:) = A(2,:) - fator*A(1,:)
L(2,1) = fator

fator = A(3,1)/pivo
A(3,:) = A(3,:) - fator*A(1,:)
L(3,1) = fator

fator = A(4,1)/pivo
A(4,:) = A(4,:) - fator*A(1,:)
L(4,1) = fator


// j = 2
pivo = A(2,2)

fator = A(3,2)/pivo
A(3,:) = A(3,:) - fator*A(2,:)
L(3,2) = fator

fator = A(4,2)/pivo
A(4,:) = A(4,:) - fator*A(2,:)
L(4,2) = fator

// j = 3 (n-1)
pivo = A(3,3)

fator = A(4,3)/pivo
A(4,:) = A(4,:) - fator*A(3,:)
L(4,3) = fator

C = A(:,1:4)
d = A(:,5)


A = [-4 -8 4 10  ;  -32 -54 25 80  ;  36 142 -88 -99  ;  28 126 -95 -120];
b = [8  ;  88  ;  84  ;  48]

A = [A b] 
L = eye(4,4)


for j = 1:3
    pivo = A(j,j)
    for i = j+1:4
      fator = A(i,j)/pivo
      A(i,:) = A(i,:) - fator*A(j,:)
      L(i,j) = fator
    end
end
L

// Jacobi

A = [6 2 2 1; 2 8 3 3; -1 -2 8 4; 2 -1 0 6]
//b = A*[0.1; 4; 3; 102]
b = [6 -6 9 -9]'


DD = diag(diag(A))

B = inv(DD)*(DD - A)
g = inv(DD)*b

x = ones(4,1)

xold = x
x = B*x + g
Er = max(abs(x - xold))/max(abs(x))

xold = x
x = B*x + g
Er = max(abs(x - xold))/max(abs(x))

xold = x
x = B*x + g
Er = max(abs(x - xold))/max(abs(x))

xold = x
x = B*x + g
Er = max(abs(x - xold))/max(abs(x))

xold = x
x = B*x + g
Er = max(abs(x - xold))/max(abs(x))

xold = x
x = B*x + g
Er = max(abs(x - xold))/max(abs(x))

xold = x
x = B*x + g
Er = max(abs(x - xold))/max(abs(x))

xold = x
x = B*x + g
Er = max(abs(x - xold))/max(abs(x))

xold = x
x = B*x + g
Er = max(abs(x - xold))/max(abs(x))

xold = x
x = B*x + g
Er = max(abs(x - xold))/max(abs(x))

xold = x
x = B*x + g
Er = max(abs(x - xold))/max(abs(x))




