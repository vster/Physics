clear
syms A phi real
Psi=A*cos(phi)^2

I=int(abs(Psi)^2,phi,0,2*pi)
% (3*pi*A^2)/4 => A=2/sqrt(3*pi)

Psi=subs(Psi,A,sym(2)/sqrt(sym(3)*pi))
% (2*3^(1/2)*cos(phi)^2)/(3*pi^(1/2))

% Orthonormal Operator Function Set for OperLz
syms n real
Psin=(1/sqrt(sym(2)*pi))*exp(i*n*phi)

cn=int(Psi'*Psin,phi,0,2*pi)
% -(6^(1/2)*(n^2 - 2)*(exp(pi*n*2i) - 1)*1i)/(3*n*pi*(n^2 - 4))
pretty(cn)
%             2
%  sqrt(6) (n  - 2) (exp(pi n 2i) - 1) 1i
%- --------------------------------------
%                       2
%              3 n pi (n  - 4)
% .... -?
