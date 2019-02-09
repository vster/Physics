% x0 = 10 cm = 0.1 m
% A = 2.0 cm^2
% N = 1000
% Vpril = 12 V
clear
syms k0 c N A x0
L=4*pi*(k0/c^2)*N^2*A/x0
digits(3)
L1=vpa(subs(L,[k0 c N A x0],[9e9 3e8 1000 2e-4 0.1]))
% 0.00251 H =2.51e-3 H
% Epril+Eselfind=I*R
% R=0
% Epril=-Eselfind
% -L*dI/dt=-Vpril
% L*dI/dt=Vpril
% dI=(Vpril/L)*dt
syms Vpril L t
I=(Vpril/L)*t
I1=vpa(subs(I,[Vpril L t],[12 L1 0.01]))
% 47.7 A