% A=2 mm^2
% vd=0.1 mm/s
clear
syms D N0 M
digits(3)
n=D*N0/M
n1=vpa(subs(n,[D N0 M],[8.9 6.02e23 63.6]))
% 8.42e22 cm-3 = 8.42e28 m-3
n1=n1*1e6

syms n e vd A
I=n*e*vd*A
I1=vpa(subs(I,[n e vd A],[n1 1.6e-19 0.1e-3 2e-6]))
% 2.7 A