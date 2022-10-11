N = 1e5;
p = 0.5;
k = 1;
n = 2;
fam = rand(n,N) > p
n_filhos = sum(fam)>=k
pelo_menos_um_filho_rapaz = sum(n_filhos)/N