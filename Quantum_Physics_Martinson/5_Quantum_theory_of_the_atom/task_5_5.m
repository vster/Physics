clear
% phi=phic+phie
% roe=-e*abs(psi100)^2
% d_phie=-roe/eps0 - Poisson's equation for potential
% Put phi0=e/(4*pi*eps0*a)
syms r real
syms phie(r)
eq1=1/r^2*diff(r*2*diff(phie,r),r)==4*exp(-2*r)
% phiesol=dsolve(eq1)
eq2=1/r*diff(r*phie,r,2)==4*exp(-2*r)
phiesol=dsolve(eq2)
phie1=simplify(phiesol)
% (exp(-2*r) - C7 + r*exp(-2*r) + C6*r)/r
phie1=(1/r+1)*exp(-2*r)-1/r
phic1=1/r

syms phic phie
phi=phic+phie
phi1=subs(phi,[phic phie],[phic1 phie1])
% exp(-2*r)*(1/r + 1)

syms e eps0 a real
phi(r)=(e/(4*pi*eps0*a))*(a/r+1)*exp(-2*r/a)

% If r<<a
phi(r)=e/(4*pi*eps0*r)

% If r>>a
phi(r)=(e/(4*pi*eps0*a))*exp(-2*r/a)
