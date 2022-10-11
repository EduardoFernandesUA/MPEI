function [y] = probSimulacao(p,n,k,N)
    lancamentos = rand(n,N) > p;
    sucessos = sum(lancamentos)==k;
    y = sum(sucessos)/N;
end