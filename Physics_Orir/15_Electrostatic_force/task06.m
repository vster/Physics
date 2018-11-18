% q1=-4e-5 C
% q2=+4e-5 C
% r=0.1 m
syms q1 q2 r
F=k0*q1*q2/r^2
F1=subs(F,[k0 q1 q2 r],[9e9 4e-5 4e-5 0.1])
% 1440 N