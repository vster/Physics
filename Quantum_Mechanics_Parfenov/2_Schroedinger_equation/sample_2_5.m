clear
syms hp a m n real
E(n)=(hp^2*n^2*sym(pi)^2)/(2*a^2*m)
digits(3)
E1(n)=vpa(subs(E(n),[hp a m],[1.05e-34 8.4e-10 9.11e-31]))
% 8.46e-20e-20*n^2
E43=E1(4)-E1(3)
% 5.92e-19 J

syms h c E
lam=h*c/E
lam1=vpa(subs(lam,[h c E],[6.63e-34 3e8 E43]))
lam1=lam1*1e9
% 336 nm

