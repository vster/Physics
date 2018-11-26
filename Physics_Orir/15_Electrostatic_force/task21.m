% dEy=k0*lam*dx*cos(alfa)/r^2
% cos(alfa)=y0/r
% dEy=k0*lam*dx*y0/r^3
% dEy=k0*lam*dx*y0/(x^2+y0^2)^(3/2)
syms k0 lam x dx y0 real
assume(y0>0)
dEy=k0*lam*dx*y0/(x^2+y0^2)^(3/2)
Ey=int(dEy/dx,x,-inf,+inf)
% (2*k0*lam)/y0