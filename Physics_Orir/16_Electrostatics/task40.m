% Ball R, Q

syms k0 Q R r q real
assume(R>0)
Eout=k0*Q/r^2
Ein=k0*(Q/R^3)*r
V=-int(Eout,r,inf,R)-int(Ein,r,R,r)
V=simplify(V)
% (Q*k0*(3*R^2 - r^2))/(2*R^3)