syms k0 q r R m
F=k0*q^2/r^2
U=int(F,r,R,inf)
% (k0*q^2)/R
% U=K=m*v^2/2=(k0*q^2)/R
v=sqrt((2*k0*q^2)/(m*R))
v1=subs(v,[k0 q m R],[9e9 1.6e-19 9.1e-31 5.3e-11])
v1=vpa(v1)
digits(3)
% 3.091e6 m/s
vc=3e8/v1
% c/97