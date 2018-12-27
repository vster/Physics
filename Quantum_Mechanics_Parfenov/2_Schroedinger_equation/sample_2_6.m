clear
syms hp a m n real
E(n)=(hp^2*n^2*sym(pi)^2)/(2*a^2*m)
digits(4)
E1(n)=vpa(subs(E(n),[hp a m],[1e-34 8.4e-10 9.1e-31]))
% 7.685e-20*n^2
E32=E1(3)-E1(2)
% 3.843e-19

syms h c E
lam=h*c/E
lam1=vpa(subs(lam,[h c E],[6.63e-34 3e8 3.843e-19]))
lam1=lam1*1e9
% 517.6