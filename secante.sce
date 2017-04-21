function x = fsecante(x,xold,p,iterMax)
    iter = 0
    while(1) 
        x0=xold
        xold = x
        x = xold - f(xold)*((xold-x0)/(f(xold)-f(x0)))
        er = abs((x-xold)/x)
        iter = iter + 1

        if er < 10^-p | iter >= iterMax then
            break
        end
    end
    disp(er)
    disp(iter)
endfunction
