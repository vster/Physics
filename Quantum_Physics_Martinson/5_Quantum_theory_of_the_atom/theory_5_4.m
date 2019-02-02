% Quantum numbers and their physical meaning

% 1. Main quantum number n
% n=1,2,3,...
clear
syms m0 e eps0 hp n
syms pi
E(n)=-m0*e^4/(32*pi^2*eps0^2*hp^2)*1/n^2
E(n)=-13.6/n^2  % eV                                   (5.37)

% 2. Orbital (azimuth) quantum number l
% l=0,1,2,3,...(n-1)

% OpL^2 psi(n,l,m)=l*(l+1)*hp^2*psi(n,l,m)
% L=hp*sqrt(l*(l+1))                                   (5.38)
syms l
L=hp*sqrt(l*(l+1))

% From the standpoint of the classical theory
% L=m0*v*r - module of orbital mechanical moment
% This movement corresponds to a closed current
% i=E/T=e*v/(2*pi*r)
% Which can be characterized by a magnetic moment
% pM=i*pi*r^2=e*v*r/2 
% The coupling of the mechanical and magnetic moments 
% is determined by the gyromagnetic ratio
% G0=pM/L=e/(2*m0)                                    (5.39)
% So, the hydrogen atom has not only a mechanical moment, 
% but also a magnetic moment.
% pM=G0*L=muB*sqrt(l*(l+1))                           (5.40)
% here
% muB=e*hp/(2*m0) = 0.927e-23 J/T - Bohr magneton

% Magnetic quantum number m
% m = 0, +-1, +-2,... +-l
% OpLz psi(n,l,m)= m*hp*psi(n,l,m)

% Lz=m*hp                                             (5.41)
% This formula is called the spatial quantization formula.

% Possible values of the projection of the magnetic moment 
% of the atom on the selected direction z
% pzM=G0*Lz=m*muB                                     (5.42)
% where m - magnetic quantum number