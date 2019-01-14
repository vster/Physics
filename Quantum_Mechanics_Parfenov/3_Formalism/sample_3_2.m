clear
syms x L
Psi=sin(pi*x/L)
% int(D)|Psi|^2*d_ksi=
I=int(Psi^2,x,0,L)
% L/2 < inf

Psi2=tan(pi*x/L)
I2=int(Psi2^2,x,0,L)
% Inf