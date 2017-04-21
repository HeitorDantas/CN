function y = f(d)
    y = sin(d)
endfunction
a=-3.5
b=-3
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
    if er < 10^(-3)
        break
    end
end
