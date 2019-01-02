% Determination of the electric field
syms F Q q k0 p r R
E=F/q

E=q*k0*(p/r^3)/q
% k0*p/r^3

%  E=1/q*F
E=1/q*k0*(Q*q/r^2)
% (Q*k0)/r^2

syms N m C 
E_si=subs(E,[k0 Q q r R],[N*m^2/C^2 C C m 1])
% N/C
