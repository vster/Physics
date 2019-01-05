% Kmax=h*f-W0
% W0=h*f=h*c/lam =>
clear
syms h c W0
lam=h*c/W0
digits(3)
lam0=vpa(subs(lam,[h c W0],[6.6e-34 3e8 4.4*1.6e-19]))
% 2.81e-7 m