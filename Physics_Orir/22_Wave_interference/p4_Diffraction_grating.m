% Diffraction grating
clear
syms I0 N phi
I=I0*sin(N*(phi/2))^2/sin(phi/2)^2
% where
% phi=k*d*sin(teta)

I1=N^2*I0
% when
% phi->0 or
% phi(n)=2*pi*n                     (22-6)
% or
% k*d*sin(phi(n))=2*pi*n
% i.e.
% sin(teta(n))=n*lam/d              (22-7)

% d*sin(teta)=n*lam
% or sin(teta)=n*lam/d

% Resolution

% N*D_phi0/2=pi
% or
%D_phi0=2*pi/N
syms k d teta0
phi0(teta0)=k*d*sin(teta0)
D_phi0=diff(phi0,teta0)
% d*k*cos(teta0)*d_teta0
syms D_phi0
D_teta0=D_phi0/(d*k*cos(teta0))
D_teta0=2*pi/(N*d*k*cos(teta0))
syms lam0
D_teta0=lam0/(N*d*cos(teta0))             % (22-8)

% sin(teta)=lam/d => D_lam=d*cos(teta)*D_teta
% Use (22-8), then
% D_lam0=lam0/N                             (22-9)