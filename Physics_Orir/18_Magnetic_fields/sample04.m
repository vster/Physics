% SI -> SGS
% k0=1, B->B/c
% B_c=(1/c^2)*(2*I*A/r^3)
clear
syms B c I A r real
eq1=B/c==(1/c^2)*(2*I*A/r^3)
I=solve(eq1,I)
% (B*c*r^3)/(2*A)
digits(3)
I1=vpa(subs(I,[B c r A],[1 3e10 8.1e8 pi*(5e8)^2]))
% 1.01e19 SGS/s
I2=I1*(1/3)*1e-9
% 3.38e9 A