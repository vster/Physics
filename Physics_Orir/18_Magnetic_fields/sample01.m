% Rectangular Coil
% L,N,I
% B-?

clear
syms I If N L k0 c
If1=I*N/L % A/m
B=(4*pi*k0/c^2)*If
B=subs(B,If,I*N/L)
% (4*pi*I*N*k0)/(L*c^2)

