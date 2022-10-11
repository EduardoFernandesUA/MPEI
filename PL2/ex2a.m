alvos = 100;
dardos = 20;
tests = 10000;

lancamentos = randi(alvos,dardos,tests);

res_ex2a = 0;
for i = 1 : tests
    res_ex2a = res_ex2a(1) +  double( length(unique(lancamentos(:, i))) == dardos );
end
res_ex2ab = res_ex2a ./ tests

