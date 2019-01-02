% Ring
% R Q x0

% dEx=dE*(cos(alfa))
% cos(alfa)=x0/r
% If lam=Q/(2*pi*R) - linear charge density, 
% then
% dE=k0*lam*dl/r^2
% dEx=k0*(lam*dl/r^2)*x0/r

% E=Ex=(k0*lam*x0/r^2)*int dl= (k0*lam*x0/r^2)*(2*pi*R)
clear
syms k0 x0 Q x0 R
E=k0*x0*Q/(x0^2+R^2)^(3/2)

syms N m C
E_si=simplify(subs(E,[k0 Q x0 R],[N*m^2/C^2 C m m]))
% (2^(1/2)*N*m^3)/(4*C*(m^2)^(3/2))
E_si=simplify((2^(1/2)*N*m^3)/(4*C*m^3))
% (2^(1/2)*N)/(4*C) ~ N/C