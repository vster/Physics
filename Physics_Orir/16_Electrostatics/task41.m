clear
syms k0 Q R r q real
assume(R>0)
Eout=k0*Q/r^2
Ein=k0*(Q/R^3)*r
U=int(Ein^2/(8*pi*k0)*4*pi*r^2,r,0,R)+int(Eout^2/(8*pi*k0)*4*pi*r^2,r,R,inf)
% (3*Q^2*k0)/(5*R)

