% The derivation of the formula for magnetic force
clear
syms v c I
lam1=1/sqrt(1-v^2/c^2)*(v/c^2)*I
% (I*v)/(c^2*(1 - v^2/c^2)^(1/2))             (17-10)
% F1=q*E1
syms q k0 y
F1=q*(2*k0*lam1/y)
% F1=(2*I*k0*q*v)/(c^2*y*(1 - v^2/c^2)^(1/2))    (17-11)
pretty(F1)
F=sqrt(1-v^2/c^2)*F1
% F=(2*I*k0*q*v)/(c^2*y)                     (17-12)
k0=1e-7*3e8^2
% 9e+09