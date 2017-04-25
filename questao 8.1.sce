ano = [1980 1985 1990 1993 1994 1996 1998]'
acidentes = [8300 9900 10400 13200 13600 13700 14600]'
acp10 =[1688 1577 1397 1439 1418 1385 1415]'/1000

//regressao linear
n = length(ano)
L = [ones(n,1) ano]
ab = inv(L'*L)*(L'*acidentes)
a=ab(1); b = ab(2)
subplot(221)
plot(ano,acidentes,'o')
plot(ano,a+b*ano)

r1 = a+b*2000

//regressap quadratica Qx=b

Q = [ones(n,1) acp10 acp10.^2]
ab = inv(Q'*Q)*(Q'*acidentes)
a1=ab(1); b1 = ab(2) ;c1 = ab(3)
subplot(222)
t = 1:.01:2
plot(acp10,acidentes,'*')
plot(t,a1 + b1*t + c1*(t.^2))



