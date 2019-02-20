% Many-electron atoms

% Hartree-Fock Method
% Psi(r1,r2...rN)=Psin1(r1)*Psin2(r2)...PsinN(rN)     (6.74)
% Ui=sum(k~=i)e^2/(4*pi*eps0)int(R3)|Psink(rk)|^2/|r1-rk|*dVk    (6.75)

% Thomas-Fermi method
clear
syms r p m0 e phi(r)
E=p^2/(2*m0)-e*phi(r)                     % (6.76)
pF=sqrt(2*m0*e*phi(r))                    % (6.77)
syms hp
G=2*(4/3*pi*pF^3)/(2*pi*hp)^3
% (2*2^(1/2)*(e*m0*phi(r))^(3/2))/(3*hp^3*pi^2)
ro(r)=-e*G
% -(2*2^(1/2)*e*(e*m0*phi(r))^(3/2))/(3*hp^3*pi^2)

% Poisson equation
% laplacian(phi)=-ro/eps0                    (6.78)
syms eps0
eq1=1/r*diff(r*phi,r,2)+ro/eps0
% (2*diff(phi(r), r) + r*diff(phi(r), r, r))/r -           (6.79)
%      - (2*2^(1/2)*e*(e*m0*phi(r))^(3/2))/(3*eps0*hp^3*pi^2)
% phisol=dsolve(eq1)
% phi(r)->Z*e/(4*pi*eps0*r) at r->0             
% phi(r)->0 at r->inf                      (6.80)

% Put Phi=phi/(Z*e/(4*pi*eps0*r)) and x=r/R
% where
% R=1/2*(9*pi^2/16)^(1/3)*1/Z^(1/3)*(4*pi*eps0*hp^2)/(m0*e^2)
%   R=1/2*(9*pi^2/16)^(1/3)*a/Z^(1/3) = 0.885*a/Z^(1/3)
 
syms x Phi(x)
eq2=diff(Phi,x,2)-sqrt(Phi^3/x)
% cond=([Phi(0)==1,Phi(inf)==0])
% PhiSol=dsolve(eq2)

% In the sphere of the radius 
% R=1.33*a*Z^(-1/3)
% half of the electron charge of the atom

