syms D N0 M
digits(3)
n=D*N0/M
n1=vpa(subs(n,[D N0 M],[8.9 6.02e23 63.6]))
% 8.42e22 cm-3 = 8.42e28 m-3
n1=n1*1e6

% I=n*e*vd*A
syms I n e A
vd=I/(n*e*A)
vd1=vpa(subs(vd,[I n e A],[1 n1 1.6e-19 1e-6]))
% 7.42e-5 m/s = 0.074 mm/s