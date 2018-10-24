syms n hp m x0 U1
digits(3)
L=2*x0
K(n)=n^2*sym(pi,'r')^2*hp^2/(2*m*L^2)
% (hp^2*n^2*pi^2)/(8*m*x0^2)
E(n)=K(n)+U1
% U1 + (hp^2*n^2*pi^2)/(8*m*x0^2)
E=subs(E,[U1 hp n pi m x0],sym([-20*1.6e-19 1e-34 1 3.14 9.11e-31 5e-11],'d'))
% 2.21e-18 J
Eev=E/1.6e-19
% 13.8 eV