% Hypothesis of quanta. Planck's formula.
% E=h*nu or  E=hp*w                    (1.31)
% <eps>=sum(n=0:inf)P(n)*eps(n)        (1.32)
% where 
% eps(n)=n*hp*w is possible value of radiation energy
% P(n) - the probability that the radiation will have energy eps(n)

% P(n)=A*exp(-eps(n)/(k*T))            (1.33)
syms n k T eps(n) A
P(n)=A*exp(-eps(n)/(k*T))
% sum(n=0:inf)P(n)=1 => 
% A=(sum(n=0:inf)exp(-eps(n)/(k*T)))^(-1)
A=symsum(exp(-eps(n)/(k*T)),n,0,inf)^(-1)
% 1/symsum(exp(-eps(n)/(T*k)), n, 0, Inf)

% <eps>=sum(n=0:inf)n*hp*w*exp(-n*hp*w/(k*t))    (1.34)
%       /sum(n=0:inf)exp(-n*hp*w/k*T)