exec('C:\Users\HeitorCarlos\Desktop\desktop\livros pdf\2017.1\CN\Scilab Programas e execicios\apostila de scilab exercicios\Fatorial.sce');
function y = myexp(x)
    y=zeros(1,200)
    for i=1:200
        for j=0:50
            y(i) = y(i) + x(i)^j/fat(j);
        end
    end
endfunction


