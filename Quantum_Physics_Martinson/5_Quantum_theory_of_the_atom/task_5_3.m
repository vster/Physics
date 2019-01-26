% Spectral line broadening

% 1) Radiation broadening
% tau=1e-8 s
% DE=hp/tau
% dw0=DEn/hp+DEk/hp=1/taun+1/tauk
tau=1e-8
dw0=1/tau
% 1e8 1/s
% dlam0=1e-5 nm
syms lam0 dw0 w0
dlam0=(dw0/w0)*lam0
dlam0v=vpa(subs(dlam0,[dw0 w0 lam0],[1e8 3e15 600]))
% 2.0e-5 nm

% 2) Doppler broadening
% pf=hp*k, where k=w/c~w0/c
% p=p0-hp*k
syms p0 hp k m0
Eotd=(p0-hp*k)^2/(2*m0)-p0^2/(2*m0)
Eotd=expand(Eotd)
% (hp^2*k^2)/(2*m0) - (p0*hp*k)/m0
syms w0 c
Eotd=subs(Eotd,k,w0/c)
% (hp^2*w0^2)/(2*c^2*m0) - (hp*p0*w0)/(c*m0)
syms alfa
Eotd=(hp^2*w0^2)/(2*c^2*m0) - (hp*p0*w0)/(c*m0)*cos(alfa)

% hp*w=(Ek-En)-Eotd
% from here
% w=w0-dw0+-dwd
dw0=hp*w0^2/(2*m0*c^2)
digits(3)
dw0v=vpa(subs(dw0,[hp w0 m0 c],[1.05e-34 3e15 1e-25 3e8]))
% 5.25e4 rad/s (dlam0 = 1e-8 nm)
syms lam0 dw0 w0
dlam0=(dw0/w0)*lam0
dlam0v=vpa(subs(dlam0,[dw0 w0 lam0],[5.25e4 3e15 600]))
% 1.05e-8~1e8 nm

% dwd=p0*w0/(m0*c)=(v0/c)*w0
syms v0 c w0
dwd=(v0/c)*w0
dwd1=vpa(subs(dwd,[v0 c w0],[1e3 3e8 3e15]))
% 1.0e10 rad/s
syms lam0 dw0 w0
dlam0=(dw0/w0)*lam0
dlam0v=vpa(subs(dlam0,[dw0 w0 lam0],[1e10 3e15 600]))
% 0.002 nm