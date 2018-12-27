clear
syms hp a m n n1 n2 real
E(n)=(hp^2*n^2*sym(pi)^2)/(2*a^2*m)
digits(3)
DE=(hp^2*sym(pi)^2*(n2^2-n1^2))/(2*a^2*m)
DE1=vpa(subs(DE,[hp a m n1 n2],[1.05e-34 1e-9 9.11e-31 1 2]))
% 1.79e-19
EeV=DE1/1.6e-19
% 1.12 eV

syms h c E
lam=h*c/E
lam1=vpa(subs(lam,[h c E],[6.63e-34 3e8 DE1]))
% 1.11e-6
lam1*1e6
% 1.11 mkm