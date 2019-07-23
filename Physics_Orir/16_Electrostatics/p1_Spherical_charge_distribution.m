% Spherical charge distribution

% Field outside the sphere
% int(S)E*dA=E*(4*pi*R^2)
syms A E(A) R k0 Q r
eq1=int(E(A),A)==E*(4*pi*R^2)

% E*(4*pi*r^2)=4*pi*k0*Q
eq2=E*(4*pi*r^2)==4*pi*k0*Q

% E=k0*Q/r^2, r>R         (16-1)
E1=k0*Q/r^2

% Field inside the sphere
% int()Ein*dA=0
syms Ein(A)
eq3=int(Ein(A),A)==0
% Ein(4*pi*r^2)=0
eq4=Ein*(4*pi*r^2)
% Ein=0, r<R
eq5=Ein==0

% Uniformly charged ball

% On the surface of a charged ball
% E=k0*Q/R^2
E1=k0*Q/R^2

% Applying the Gauss theorem
% int()E*dA=4*pi*k0*(Q*r^3/R^3)
eq6=int(E(A),A)==4*pi*k0*(Q*r^3/R^3)

% E*(4*pi*r^2)=4*pi*k0*(Q*r^3/R^3)
eq7=E*(4*pi*r^2)==4*pi*k0*(Q*r^3/R^3)

% E=k0*(Q/R^3)*r
E1=k0*(Q/R^3)*r