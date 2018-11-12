% OperLz
% -i*hp*d_Psi/d_phi = aj*Psi
% d_Psi/d_phi = i aj/hp Psi
% Psi(phi)=A*exp(i/hp aj phi)
% Put an/hp = n
% Phi(phi)=Psi(phi+2*pi) => exp(i*2*pi*n)=1
% an=n*hp - own values
% Psi(phi)=A*exp(i*n*phi)
% int (0:2*pi) |Psi|^2 d_phi = A^2*2*pi => A=1/sqrt(2*pi)
% Psi(phi,n) = 1/sqrt(2*pi) exp(i*n*phi)

clear
syms phi A n real
Psi=A*exp(i*n*phi)
I=int(abs(Psi)^2,phi,0,2*pi)
% 2*pi*A^2=1 => 
A1=1/sqrt(2*sym(pi))
Psi=subs(Psi,A,A1)
% (2^(1/2)*exp(n*phi*1i))/(2*pi^(1/2))
