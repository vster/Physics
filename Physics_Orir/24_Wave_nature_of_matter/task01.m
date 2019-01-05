% E=1 MeV
% lam-?

% E=h*f=h*c/lam => lam=h*c/E
clear
syms h c E
lam=h*c/E
digits(3)
lam1=vpa(subs(lam,[h c E],[6.6e-34 3e8 1e6*1.6e-19]))
% 1.24e-12 m = 0.0124 A