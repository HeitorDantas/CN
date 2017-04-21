ndec = input('Digite o numero na base decimal --> ')
resto=1
nbin=0
aux= ndec
i=0
while ndec ~= 0
    resto = modulo(ndec,2)
    ndec = ndec/2
    ndec = int(ndec)
    nbin = nbin + resto*(10**i) 
    i = i + 1
end
printf('O numero %g na base 10 equivale a %g em binario.',aux,nbin)
