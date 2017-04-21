function y = f3(t)
   y = 4*exp((-t)./4).*cos(t) - 0.4
endfunction

function y = flinha(t)
   y = -exp((-t)./4).*cos(t) - sin(t)*4*exp(-t/4))
endfunction

function x = fpos(a,b)
    xold = a
    er = 0
    iter =0
    while(1)
        x = a - ((b-a)*f3(a))/(f3(b)-f3(a))
        if f3(a)*f3(x)< 0 then
            b = x
        else
            a = x
        end
        er = abs((x - xold)/x)
        xold = x
        iter = iter +1
        if er<10^(-6) then
            break
        end
    end
    disp(iter)
    disp(er)
endfunction
t = 0:0.001:10;
plot(t,f3(t))
xgrid
