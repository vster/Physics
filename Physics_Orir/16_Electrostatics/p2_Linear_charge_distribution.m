% Linear charge distribution

% As a Gaussian surface we choose a cylinder of length L
% int()E*dA=4*pi*k0*(lam*L)
% int()E*dA=E*(2*pi*r*L)
% 2*pi*r*L*E=4*pi*k0*lam*L
% Linear charge distribution
clear
syms k0 lam r
E=2*k0*lam/r

syms N m C 
E_si=subs(E,[k0 lam r],[N*m^2/C^2 C/m m])
% (2*N)/C ~ N/C

% The field inside a uniformly charged rod
% Qin=ro*pi*r^2*L
% int()E*dA=4*pi*k0*(ro*pi*r^2*L)
% E*(2*pi*r*L)=4*pi*k0*(ro*pi*r^2*L)
% Inside the rod
% E=2*k0*ro*pi*r                   (16-6)
% lam=ro*pi*R^2
% E=2*k0*lam*r/R^2                 (16-6a)
syms k0 lam r R
E=2*k0*lam*r/R^2

E_si=subs(E,[k0 lam r R],[N*m^2/C^2 C/m m m])
% (2*N)/C ~ N/C