function x = newton(xold,p,iterMax)
    iter = 0
    while(1) 
        x = xold - f(xold)/flinha(xold)
        er = abs((x-xold)/x)
        xold = x
        iter = iter + 1
        if er < 10^-p | iter >= iterMax then
            break
        end
    end
    disp(iter)
    disp(er)
endfunction
