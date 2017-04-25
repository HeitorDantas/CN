
ano = [0 5 10 13 14 16 18]';
acidentes = [8300 9900 10400 13200 13600 13700 14600]';
acp10 =[1688 1577 1397 1439 1418 1385 1415]'/1000;

//regressao linear
n = length(ano)
L = [ones(n,1) ano]
LTL = L'*L
LTc = L'*acidentes
ab = inv(L'*L)*(L'*acidentes);
a=ab(1); b = ab(2)
subplot(221)
plot(ano,acidentes,'o')
plot(ano,a+b*ano)

r1 = a+b*20

//regressap quadratica Qx=b

Q = [ones(n,1) ano ano.^2]
ab1 = inv(Q'*Q)*(Q'*acp10)
QTQ = Q'*Q
QTc = Q'*acp10
a1=ab1(1); b1 = ab1(2) ;c1 = ab1(3)
subplot(222)
t = 0:.1:20;
plot(ano,acp10,'*')
plot(t,a1 + b1*t + c1*(t.^2))

r =a1 + b1*20 + c1*(20.^2)

e1 = LTL*ab - LTc
e2 = QTQ*ab1 - QTc
e1 = e1'*e1
e2 = e2'*e2
