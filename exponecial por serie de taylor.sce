exec("C:\Users\HeitorCarlos\Desktop\desktop\livros pdf\2017.1\CN\Scilab Programas e execicios\apostila de scilab exercicios\Fatorial.sce");
x = 0:0.1:50
tx = 0
for i=0:1:5
    tx = tx + (x.^i)/fat(i)
end
plot(x,tx,'r');
tx = 0
for i=0:1:10
    tx = tx + (x.^i)/fat(i)
end
plot(x,tx);
tx = 0
for i=0:1:50
    tx = tx + (x.^i)/fat(i)
end
plot(x,tx);
