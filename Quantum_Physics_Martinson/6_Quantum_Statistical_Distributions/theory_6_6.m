% Electron emission from metal

% Electron work function of metal
% Av=U0-EF                        (6.66)

% Thermoelectronic emission

% Theory of Thermionic Emission
clear
syms dpx dpy dpz real
dVp=dpx*dpy*dpz
syms hp
dGp=2/(2*pi*hp)^3*dVp
% (dpx*dpy*dpz)/(4*hp^3*pi^3)
syms E EF k T real
nFD=1/(exp((E-EF)/(k*T))+1)
dn=dGp*nFD
% (dpx*dpy*dpz)/(4*hp^3*pi^3*(exp(-(EF - E)/(T*k)) + 1))  (6.67)
% Emin=EF+Av
%  For (6.67) E-EF>>k*T => Av>>k*T
syms pi
dn=(dpx*dpy*dpz)/(4*hp^3*pi^3*(exp(-(EF - E)/(T*k)))) 
% E=(px^2+py^2+pz^2)/(2*m0)
syms px py pz m0 real
dn=subs(dn,E,(px^2+py^2+pz^2)/(2*m0))
% (dpx*dpy*dpz*exp((EF - (px^2 + py^2 + pz^2)/(2*m0))/(T*k)))/(4*hp^3*pi^3)
% dnz=int(int(dn/(dpx*dpy),py,-inf,inf),px,-inf,inf)
% ...

% Richardson-Dashman Formula
syms A Av
js=A*T^2*exp(-Av/(k*T))                % (6.68)
% where
% A=4*pi*e*m0*k^2/(2*pi*hp)^3
% A=1.20e6 A/(m^2*K^2)