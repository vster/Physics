% r = 1 m
% I = 1 A

% F=I*cross(I,B)
% F/L=I*((2*k0/c^2)*I/r)=(2*k0/c^2)*I^2/r
clear
syms k0 c I r
FL=(2*k0/c^2)*I^2/r
digits(3)
FL1=vpa(subs(FL,[k0 c I r],[9e9 3e8 1 1]))
% 2.0e-7 N/m