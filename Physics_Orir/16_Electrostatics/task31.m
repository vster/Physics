syms k0 lam r alfa x0
E=2*k0*lam/r

V=int(E,r)
% 2*k0*lam*log(r)

V=2*k0*lam*log(r+(x0/2)*cos(alfa))+2*k0*(-lam)*log(r-(x0/2)*cos(alfa))
V=simplify(V)
% -2*k0*lam*(log(r - (x0*cos(alfa))/2) - log(r + (x0*cos(alfa))/2))
% -2*k0*lam*(log(r)-log(1-(x0*cos(alfa))/(2*r))-log(r)-log(1+(x0*cos(alfa))/(2*r))
% 2*k0*lam*x0*cos(alfa)/r