clear
syms sigma r dr
assume(r>0)
dq=2*pi*r*sigma*dr
%
syms k0 x0
assume(x0>0)
dE=k0*x0*dq/(x0^2+r^2)^(3/2)
% (2*pi*dr*k0*r*sigma*x0)/(r^2 + x0^2)^(3/2)
E=int(dE/dr,r,0,inf)
% 2*pi*k0*sigma
pretty(E)