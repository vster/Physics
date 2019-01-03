% B=0.6e-4 T
% v=278 m/s
clear
syms v B
E=v*B
digits(3)
E1=vpa(subs(E,[v B],[278 0.6e-4]))
% 0.0167 V/m
syms x0
V=E*x0
V1=vpa(subs(V,[E x0],[E1 20]))
% 0.334 V