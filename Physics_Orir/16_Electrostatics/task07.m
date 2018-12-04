% C=A/(4*pi*k0*x0)
syms k0 x0 C
A=4*pi*k0*x0*C
A1=subs(A,[k0,x0,C],[9e9,1e-4,1])
digits(3)
A1=vpa(A1)
% 1.13e7 m^2
