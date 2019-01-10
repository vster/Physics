% En+V0=n^2*pi^2*hp^2/(2*m*(2*a)^2)
clear
syms hp m a V0 real
syms pi
syms n integer
z0=a/hp*sqrt(2*m*V0)
digits(3)
z01=vpa(subs(z0,[a hp m V0],[2e-10 1.05e-34 9.1e-31 1.6e-19]))
% 1.03

E=n^2*pi^2*hp^2/(2*m*(2*a)^2)
E1=vpa(subs(E,[n hp m a V0],[1 1.05e-34 9.1e-31 3e-10 1.6e-19]))
% 6.08e-21
E2=vpa(subs(E,[n hp m a V0],[2 1.05e-34 9.1e-31 3e-10 1.6e-19]))
% 5.04e-19
E3=vpa(subs(E,[n hp m a V0],[3 1.05e-34 9.1e-31 3e-10 1.6e-19]))
% 1.33e-18