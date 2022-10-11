% n faz o q o exercicio pede

pessoas = 2; % duas ou mais
p = 0.5;
ano = 365; % dias
tests = 100;
maxDays = 1e5;
tests = 1000;

res = zeros(1,tests);
for i=1:tests

    dates = zeros(1,ano);
    for n=1:maxDays
        day = randi(365);
        dates(day) = dates(day) + 1;
        if dates(day) >= pessoas
            res(i) = n;
            break
        end
    end

end

ex4a_r = sum(res) / tests