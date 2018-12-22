syms k0 lam x0 alfa r x
V=2*k0*lam*x0*cos(alfa)/r
V=2*k0*lam*x0*x/r^2

r1=sqrt(x^2+y^2+z^2)
Ey=-diff(V,y)-diff(V,r)*diff(r1,y)
% (4*k0*lam*x*x0*y)/(r^3*(x^2 + y^2 + z^2)^(1/2))
% Ey=(4*k0*lam*x*x0*y)/r^4
Ey=(4*k0*lam*x0*cos(alfa)*sin(alfa))/r^2
Ey=simplify(Ey)
% (2*k0*lam*x0*sin(2*alfa))/r^2

Ex=-diff(V,x)-diff(V,r)*diff(r1,x)
% (4*k0*lam*x^2*x0)/(r^3*(x^2 + y^2 + z^2)^(1/2)) - (2*k0*lam*x0)/r^2
Ex=(4*k0*lam*x0*cos(alfa)^2)/r^2-(2*k0*lam*x0)/r^2
Ex=simplify(Ex)
% (2*k0*lam*x0*cos(2*alfa))/r^2
