% 2*m*a^2*V/hp^2=(7*pi/4)^2
clear
syms hp m a
V=(7*pi/4)^2*hp^2/(2*m*a^2)
V1=vpa(subs(V,[hp m a],[1.05e-34 9.1e-31 1/2*1e-9]))
% 7.32e-19
V1=V1/1.6e-19
% 4.58 eV
