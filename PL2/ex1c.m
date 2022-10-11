clear all;

fam = rand(2, 1e5) > 0.5;

A = sum(fam) == 2; % 2 rapazes
B = sum(fam) >= 1; % pelo menos 1 rapaz

AB = A&B;
%P_AB = sum(AB)/N;
%P_A_dado_b = P_AB / (sum(B)/N);
% ou
P_A_dado_B = sum(AB)/sum(B)