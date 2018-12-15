% EI=0
% EIII=k0*Q/r^2

syms Q R1 R2 r k0
Vt=4/3*pi*(R1^3-R2^3)
q=Q/Vt
Vin=4/3*pi*(r^3-R2^3)
Qin=q*Vin
% -(Q*(R2^3 - r^3))/(R1^3 - R2^3)

% E*4*pi*r^2=4*pi*k0*Qin
EII=k0*Qin/r^2
% (Q*k0*(r^3 - R2^3))/(r^2*(R1^3 - R2^3))