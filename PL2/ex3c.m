T = 100:100:1000;
tests = 10000;
keys = 50;

res = zeros(length(T));
for i=1 : length(T)
    res(i) = calcTests(T(i),keys,tests);
end
plot(res)


function [y] = calcTests(T,keys,tests)
    hashes = randi(T,keys,tests);
    res = 0;
    for i = 1 : tests
        res = res(1) +  double( length(unique(hashes(:, i))) == keys );
    end
    y = res ./ tests;
end