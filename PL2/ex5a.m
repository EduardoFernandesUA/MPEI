dado = 6; % seis faces
lancamentos = 2;

tests = 1e5;

% A - soma é igual a 9
% B - o segundo valor é par
% C - pelo menos 1 é igual a 5
% D - nenhum dos valores é igual a 1

results = randi(dado,lancamentos,tests)

A = sum(sum(results)==9) / tests
B = sum(rem(results(2,:),2)==0) / tests
C = sum(sum(results(:,:)==5)>=1) / tests
D = sum(sum(results(:,:)~=1)~=2) / tests
%C = sum()

% falta a alinia b) e c)