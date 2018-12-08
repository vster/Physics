digits(4)
syms k0 q r R
F=k0*q^2/r^2
F1=subs(F,[k0 q r],[9e9 1.6e-19 1.5e-15])
F1=vpa(F1)
% 102.4 N

A=int(F,r,R,inf)
% (k0*q^2)/R
A1=subs(A,[k0 q R],[9e9 1.6e-19 1.5e-15])
A1=vpa(A1)
% 1.536e-13 J
A2=A1/1.6e-19
% 9.6e5 = 0.96 Mev