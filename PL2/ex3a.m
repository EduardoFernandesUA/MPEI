T = 1000;
keys = 10;
tests = 100;

hashes = randi(T,10,tests);

res = 0;
for i = 1 : tests
    res = res(1) +  double( length(unique(hashes(:, i))) == keys );
end
res = 1-(res ./ tests)