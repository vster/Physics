% Electric potential

% Ub-Ua=int(a:b)F*ds=-q*int(a:b)E*ds
% U(r)=-q*int(inf:r)E*ds

% U=-q*int(inf:r)k0*(Q/r^2)*dr = -q*Q*k0*[-1/r](inf:r)

% Potential energy point charges Q and q
% U=k0*q*Q/r

% Determination of electric potential
% V=U/q

% Point charge potential
% V=k0*Q/r

% Potential difference
% Vb-Va=-int(a:b)E*ds

% dV=-E*ds

% E=-gradient(V)

% Electrical poly and potential difference between parallel plates
% D_V=-E*x0
% E=-4*pi*k0*sigma
% D_V=4*pi*k0*sigma*x0
% sigma=Q/A
% D_V=4*pi*k0*x0*Q/A

% Coaxial cable
% D_V=int(a:b)E*dr
% D_V=int(a:b)(2*k0*lam/r)dr
syms  k0 lam r a b
assume(a>0)
assume(a<b)
E=2*k0*lam/r
D_V=int(E,r,a,b)
% -2*k0*lam*(log(a) - log(b))
% 2*k0*lam*log(b/a)

% V=-int()E*ds=int()(E1+E2+...En)=
% V=V1+V2+...Vn

% int_c()E*dA=0

% Electronvolt
% D_K=-D_U
digits(3)
e=1.6e-19 % C
D_V=1 % V
DK=vpa(e*D_V)
% 1 eV = 1.6e-19 J
% 1 MeV = 1.6e-13 J
% 1 GeV = 1.6e-10 J
% 1 TeV = 1.5e-7 J

