alvos = [1000,10000];
dardos = 10:10:100;
tests = 10000;



for i=1 : length(alvos)
    subplot(2,1,i)

    for j=1 : length(dardos)
        prob(j) = calcTests(alvos(i),dardos(j),tests);
    end

    plot(prob)
end

function [y] = calcTests(alvos,dardos,tests)
    lancamentos = randi(alvos,dardos,tests);

    y = 0;
    for i = 1 : tests
        y = y(1) +  double( length(unique(lancamentos(:, i))) < dardos );
    end
    y = y ./ tests;
end