% a)
% Frez=0=e*E+e*v*B
% E=-cross(v*B)
% E/B=v

% b)
clear
syms F e
E=F/e
digits(4)
E1=vpa(subs(E,[F e],[3e-13 1.6e-19]))
% 1.875e6 N/C
syms E v
B=E/v
B1=vpa(subs(B,[E v],[E1 3e7]))
% 0.0625 T = 625 G

% c)
% v=2*v1, v1=0.1*c
syms e E
Frez=e*E
Frez1=vpa(subs(Frez,[e E],[1.6e-19 E1]))
% 3.0e-13 N