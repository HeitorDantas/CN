function [y] = normaLinha(B)
    [n,c]=size(B)
    
    for i = 1:n
        y(i) = 0
        for j = 1:n
            y(i) = y(i) + abs(B(i,j))
        end
    end
    y = max(y)
endfunction

function y = sassenfeld(B)
    [n,c]=size(B)
    b(1) = sum(B(1,:))
    for i = 2:n
        b(i) = 0
        for j = 1:i
            b(i) = sum(b(i-1)*B(i,j)) + sum(B(i,j)) 
        end
    end
    y = max(b)
endfunction

function [x,iter,er] = gaussSeidel(A,b,p)
    n = length(b)
    x = zeros(n,1)
    iter = 0
    B = [0 20/53 0 0 0 0;20/44 0 9/44 0 0 0;0 9/60 0 6/60 0 0;0 0 6/72 0 9/72 0;0 0 0 9/65 0 2/65;0 
0 0 0 2/9 0]
    g = [200/53 90/44 -90/60 20/72 -110/65 60/9]'

    while(1)
        for i = 1:n
            x(i)=B(i,:)*x + g(i)
        end    
       xold = x 
       er = max(abs(x-xold))/max(abs(x))
       iter = iter + 1
       if er < 10^-p | iter >= 20
           break
       end    
    end
endfunction
