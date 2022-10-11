% Versao 1
%{
experiencias = rand(15,10000);

lancamentos = experiencias > 0.5;

resultados = sum(lancamentos);

sucessos = resultados>=6;

probSimulacao = sum(sucessos)/10000
%}

% Versao 2
N = 1e5;
p = 0.5;
k = 6;
n = 15;
lancamentos = rand(n,N) > p;
sucessos = sum(lancamentos)>=k;
probSimulacao = sum(sucessos)/N