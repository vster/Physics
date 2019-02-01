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