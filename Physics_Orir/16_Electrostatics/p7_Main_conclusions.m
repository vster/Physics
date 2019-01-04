% Main conclusions

% Field outside spherical charge
clear
syms k0 Q r
E=k0*Q/r^2

% Induced dipole moment
syms R E0
p=(R^3/k0)*E0
% where R - electron cloud radius

syms m N C V
p_si=subs(p,[R k0 E0],[m N*m^2/C^2 V/m])
% (C^2*V)/N ~ C^2/N*N*m/C ~ C*m

% Field created by linear charge distribution
syms lam r
E=2*k0*lam/r

syms N m C
E_si=subs(E,[k0 lam r],[N*m^2/C^2 C/m m])
% (2*N)/C~N/C~V/m

% Field of infinite charged plane
syms sigma
E=2*pi*k0*sigma

E_si=subs(E,[k0 sigma],[N*m^2/C^2 C/m^2])
% (2*pi*N)/C~N/C~V/m

% Electric potential energy
% U=-q*int(inf:r)E*ds
syms q s E(s) r
U=-q*int(E(s),s,inf,r)
% -q*int(E(s), s, Inf, r)

% Electric potential point charge
syms Q r
V=k0*Q/r

V_si=subs(V,[k0 Q r],[N*m^2/C^2 C m])
% (N*m)/C~J/C~V

% The potential difference between the plates of the capacitor
syms x0 Q A
DV=4*pi*k0*x0*(Q/A)

DV_si=subs(DV,[k0 x0 Q A],[N*m^2/C^2 m C m^2])
% (4*pi*N*m)/C~N*m/C~J/C~V

% As C=Q/DV
% then
C=A/(4*pi*k0*x0)

syms m N Cl
C_si=subs(C,[A k0 x0],[m^2 N*m^2/Cl^2 m])
% Cl^2/(4*N*m*pi)~Cl^2/(N*m)~F~Cl^2/J~Cl/V

% Energy stored in the capacitor
syms Q C
U=(1/2)*Q^2/C

syms Cl J
U_si=subs(U,[Q C],[Cl Cl^2/J])
% J/2~J

% Electric field energy density
% dU/dV=E^2/(8*pi*k0)

% The dielectric constant
% eps=C1/C0
