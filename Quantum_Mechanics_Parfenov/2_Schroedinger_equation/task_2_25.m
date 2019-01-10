% E=k^2*hp^2/(2*m)=n^2*pi^2*hp^2/(2*m*r0^2)                 (2.21)
clear
syms n hp m r0 real
syms pi
E=n^2*pi^2*hp^2/(2*m*r0^2)
digits(3)
E1=vpa(subs(E,[n hp m r0],[1 1.05e-34 1.67e-27 1e-14]))
% 3.26e-13 J
E1/1.6e-19
% 2.04e6 eV = 2.04 MeV