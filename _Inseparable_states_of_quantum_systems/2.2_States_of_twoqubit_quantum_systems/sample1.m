syms a b c d
Psi=[a;b;c;d]
% The state |psi| is separable when a*d-b*c/=0

syms alfa beta gamma tau
Psi1=[alfa;beta]
Psi2=[gamma;tau]
Psi=kron(Psi1,Psi2)
% alfa*gamma
%   alfa*tau
% beta*gamma
%   beta*tau
% a=alfa*gamma,b=alfa*tau,c=beta*gamma,d=beta*tau
% a*d=alfa*gamma*beta*tau=b*c