syms R1 R2 ro r
EI=0

lam=pi*ro*(R1^2-R2^2)
EII=2*k0*lam/r
% (2*pi*k0*ro*(R1^2 - R2^2))/r

% int_c()E*dA=4*pi*k0*ro*pi*(r^2-R1^2)*L
% EII*2*pi*r*L=4*pi*k0*ro*pi*(r^2-R1^2)*L
EII=2*pi*k0*ro*(r^2-R1^2)/r