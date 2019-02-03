% Diffraction grating
clear
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