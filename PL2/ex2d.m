dardos = 100;
alvos = [200,500,1000,2000,5000,10000,20000,50000,100000];
tests = 1e5;

res = zeros(length(alvos));
for i=1 : length(alvos)
    res(i) = calcTests(alvos(i), dardos, tests);
end
plot(res)


function [y] = calcTests(alvos,dardos,tests)
    lancamentos = randi(alvos,dardos,tests);

    y = 0;
    for i = 1 : tests
        y = y(1) +  double( length(unique(lancamentos(:, i))) < dardos );
    end
    y = y ./ tests;
end