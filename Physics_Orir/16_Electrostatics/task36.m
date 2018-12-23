% C=Q/DV
% C=A*eps/(4*pi*k0*x0)=Q/DV
% sig=Q/A=DV*eps/(4*pi*k0*x0)
digits(3)
DV=1e3
eps=2.3
k0=9e9
x0=1e-3
sig=DV*eps/(4*pi*k0*x0)
sig=vpa(sig)
% 2.03e-5 Q/m^2