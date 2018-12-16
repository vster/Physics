% A=0.01 m^2
% x0=0.02 m
% Q1=-2e-9 Q
% Q2=-4e-9 Q
clear
syms Q1 Q2 A k0 x0
sig1=Q1/A
sig2=Q2/A

E1=2*pi*k0*sig1
E2=2*pi*k0*sig2

EI=simplify(-E1-E2)
% -(2*pi*k0*(Q1 + Q2))/A
EII=simplify(E1-E2)
% (2*k0*pi*(Q1 - Q2))/A
EIII=simplify(E1+E2)
% (2*pi*k0*(Q1 + Q2))/A
DV=EII*x0
% (2*k0*x0*pi*(Q1 - Q2))/A

EI=vpa(subs(EI,[k0,Q1,Q2,A],[9e9,-2e-9,-4e-9,0.01]))
% 3.39e4 V/m
EII=vpa(subs(EII,[k0,Q1,Q2,A],[9e9,-2e-9,-4e-9,0.01]))
% 1.13e4
EIII=vpa(subs(EIII,[k0,Q1,Q2,A],[9e9,-2e-9,-4e-9,0.01]))
% -3.39e4
DV=vpa(subs(DV,[k0,Q1,Q2,A,x0],[9e9,-2e-9,-4e-9,0.01,0.02]))
% 226.0