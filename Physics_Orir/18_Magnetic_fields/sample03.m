% r = 8100 km
% R = 5000 km
% B ~ 1Gs
clear
syms k0 c I A r B real
eq1=B-(k0/c^2)*(2*I*A/r^3)
I=solve(eq1,I)
% (B*c^2*r^3)/(2*A*k0)
digits(3)
I1=vpa(subs(I,[B c r A k0],[1e-4 3e8 8.1e6 pi*(5e6)^2 9e9]))
% 3.38e9 A


