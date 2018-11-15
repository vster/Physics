syms A r a0 real
assume(a0>0)
Psi=A*exp(-r/a0)
% a0=4*pi*eps0*hp^2/(m*e^2)

% I=int() Psi^2 dV
I=int(Psi^2*4*pi*r^2,r,0,inf)
% pi*A^2*a0^3 = 1
A1=1/sqrt(pi*a^3)

syms e
U=-e^2/r

Um=int(Psi*U*Psi*4*pi*r^2,r,0,inf)
% -pi*A^2*a0^2*e^2
A1=1/sqrt(pi*a0^3)
Um=subs(Um,A,A1)
% -e^2/a0
