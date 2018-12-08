syms d mp qe ro
M=(4/3)*pi*(d/2)^3*ro
Np=M/(2*mp)
Q=1e-6*Np*qe
% (pi*d^3*qe*ro)/(12000000*mp)
digits(4)
Q1=subs(Q,[d qe mp ro],[0.01 1.6e-19 1.67e-27 1700])
Q1=vpa(Q1)
% 0.04264 C

syms q
E=k0*q/(d/2)^2
E1=vpa(subs(E,[k0 q d],[9e9 Q1 0.01]))
% 1.535e13 V/m
V=2*k0*q/d
V1=vpa(subs(V,[k0 q d],[9e9 Q1 0.01]))
% 7.675e10 V