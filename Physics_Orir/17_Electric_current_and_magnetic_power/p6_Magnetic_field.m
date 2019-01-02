% a magnetic field
clear
syms Fmag q v I k0 c y
B=Fmag/(q*v)
% Fmag=(2*I*k0*q*v)/(c^2*y)
B=subs(B,Fmag,(2*I*k0*q*v)/(c^2*y))
% B=(2*I*k0)/(c^2*y)                         (17-13)
% B=(k0/c^2)*(2*I/y)

B=mu0/(4*pi)*(2*I/y)                        % (17-14)
% where
% m0/(4*pi)=k0/c^2=1e-7 N/A^2  - magnetic constant

% As
% k0=1/(4*pi*eps0)
% eps0 - electric constant
% then
% mu0*eps0=1/c^2                        (17-15)

% Fmag=q*cross(v,B)                     (17-16)

% Right hand rule
% m*v^2/R=q*v*B => R=m*v/q*B