% C=Q/V
syms k0 Q r R
assume(R>0)
E=k0*Q/r^2
DV=int(E,r,R,inf)
% (Q*k0)/R
C=Q/DV
% R/k0
C1=subs(C,[R,k0],[0.01,9e9])
digits(3)
C1=vpa(C1)
% 1.11e-12 F = 1.11 pF