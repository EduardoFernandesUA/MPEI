T = 1000;
tests = 100;

res = zeros(T);
for i=1: T
    res(i) = calcTests(T,i,tests);
end
plot(res)


function [y] = calcTests(T,keys,tests)
    hashes = randi(T,keys,tests);
    res = 0;
    for i = 1 : tests
        res = res(1) +  double( length(unique(hashes(:, i))) == keys );
    end
    y = 1-(res ./ tests);
end