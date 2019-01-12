% a magnetic field
clear
syms Fmag q v I k0 c y
B=Fmag/(q*v)
% Fmag=(2*I*k0*q*v)/(c^2*y)
B=subs(B,Fmag,(2*I*k0*q*v)/(c^2*y))
% B=(2*I*k0)/(c^2*y)                         (17-13)
% B=(k0/c^2)*(2*I/y)

syms A N m C s
B_si=subs(B,[I k0 c y],[A N*m^2/C^2 m/s m])
% (2*A*N*s^2)/(C^2*m)~(A*N*s^2)/(A^2*s^2*m)~N/(A*m)~T

syms mu0
B=mu0/(4*pi)*(2*I/y)                        % (17-14)
% where
% mu0/(4*pi)=k0/c^2=1e-7 N/A^2  - magnetic constant

B_si=subs(B,[mu0 I y],[N/A^2 A m])
% N/(2*A*m*pi)~N/(A*m)~T

% As
% k0=1/(4*pi*eps0)
% eps0 - electric constant
% then
% mu0*eps0=1/c^2                        (17-15)

% Fmag=q*cross(v,B)                     (17-16)

syms q v B
Fmag=q*v*B

syms C m s T
Fmag_si=subs(Fmag,[q v B],[C m/s T])
% (C*T*m)/s~C*N*m/(A*m*s)~ A*s*N/(A*s)~N
Fmag_si=subs(Fmag_si,T,N/(A*m))
% (C*N)/(A*s)~N

% Right hand rule
% m*v^2/R=q*v*B => R=m*v/q*B
syms m v q B
R=m*v/(q*B)
syms kg m s C T
R_si=subs(R,[m v q B],[kg m/s C T])
% (kg*m)/(C*T*s)
R_si=subs(R_si,[T C],[N/(A*m) A*s])
% (kg*m^2)/(N*s^2)~m*N/N~m