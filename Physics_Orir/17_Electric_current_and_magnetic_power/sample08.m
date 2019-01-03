% lam=gamma*Ql
% where
% gamma=1/sqrt(1-v^2/c^2)
% E=k0*2*lam/R=2*k0*gamma*Ql/R

syms k0 lam gamma Ql R
E=2*k0*gamma*Ql/R

syms v0 c E
B=v0/c^2*E
B=subs(B,E,2*k0*gamma*Ql/R)
% B=(2*Ql*gamma*k0*v0)/(R*c^2)