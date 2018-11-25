% E=k0*x0*Q/(x0^2+R^2)^(3/2)

% dE=k0*x0*dq/(x0^2+r^2)^(3/2)
% sigma=Q/(pi*R^2)
% dq=2*pi*r*sigma*dr

clear
syms Q R
sigma=Q/(pi*R^2)
syms r dr
assume(r>0)
dq=2*pi*r*sigma*dr
% (2*Q*dr*r)/R^2
syms k0 x0
assume(x0>0)
dE=k0*x0*dq/(x0^2+r^2)^(3/2)
% (2*Q*dr*k0*r*x0)/(R^2*(r^2 + x0^2)^(3/2))
E=int(dE/dr,r,0,R)
% -(2*Q*k0*(x0/(R^2 + x0^2)^(1/2) - 1))/R^2
pretty(E)