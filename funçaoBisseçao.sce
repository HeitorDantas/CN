function x = bissMethod(a,b,p)
    xold = a
    iter = 0
    while(1)
        x=(a+b)/2
        if f(x)*f(a) < 0 then
            b = x
        else
            a = x
        end
        er = abs((x-xold)/x)
        xold = x
        iter = iter + 1
        if er < 10^(-p)
            break
        end
    end
    disp(iter)
    disp(er)
endfunction
