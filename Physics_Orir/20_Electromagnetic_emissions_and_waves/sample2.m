clear
digits(4)
% W = 3 Watt
% A = 10x10 cm^2
syms J0 z0 w t
J=J0/z0*cos(w*t)

U = 3 % J
A = 1e-2 % m^2
L = 3e8 % m
V = A*L
% 3000000 m^3

% dU/dV=U/V
dUdV=U/V
% 1.0000e-06 J/m^3

% dU_dV=1/(8*pi*k0)*(E^2+c^2*B^2)                 % (19-10)

% E^2/(8*pi*k0)=1/2*1e-6
% E^2=E0^2/2

% E0^2=8*pi*k0*1e-6
E01=vpa(sqrt(8*pi*9e9*1e-6))
% 475.6 V/m

syms E0 c k0
B0=E0/c
B01=vpa(subs(B0,[E0 c],[E01 3e8]))
% 1.585e-6 T
B01 = B01*1e4
% 0.01585 G

J0=c*E0/(2*pi*k0)
J01=subs(J0,[c E0 pi k0],[3e8 E01 3.1415 9e9])
% 2.523 A/m

I0=z0*J0
I01=subs(I0,[z0 J0],[0.1 J01])
% 0.2523 A
