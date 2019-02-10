% AL=2e-4 m^2
% xL=2e-2 m
% N=10
% AC=1.6e-4 m^2
% x0=0.25e-2 m

clear
syms k0 N AL c xL
L=4*pi*(k0/c^2)*N^2*AL/xL
digits(3)
L1=vpa(subs(L,[k0 c N AL xL],[9e9 3e8 10 2e-4 2e-2]))
% 1.26e-6 H

syms AC x0
C=AC/(4*pi*k0*x0)
C1=vpa(subs(C,[AC k0 x0],[1.6e-4 9e9 0.25e-2]))
% 5.66e-13 F
syms L C
f=1/(2*pi*sqrt(L*C))
f1=vpa(subs(f,[L C],[L1 C1]))
% 1.89e8 Hz = 189 MHz