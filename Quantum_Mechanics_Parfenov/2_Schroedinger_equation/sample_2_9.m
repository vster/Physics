clear
syms t x a A real
syms n integer
Psi=A*x*(a-x)
I=int(Psi^2,x,0,a)
% (A^2*a^5)/30 == 1 =>
A=sqrt(30/a^5)

Psi=A*x*(a-x)
% 30^(1/2)*x*(a - x)*(1/a^5)^(1/2)
c(n)=sqrt(2/a)*int(sin(n*pi*x/a)*Psi,x,0,a)
% -(2^(1/2)*(1/a)^(1/2)*(2*30^(1/2)*a^(1/2)*cos(pi*n) - 2*30^(1/2)*a^(1/2) + 30^(1/2)*a^(1/2)*n*pi*sin(pi*n)))/(n^3*pi^3)
c(n)=simplify(subs(c(n),[cos(pi*n) sin(pi*n)],[(-1)^n 0]))
% -(4*15^(1/2)*a^(1/2)*((-1)^n - 1)*(1/a)^(1/2))/(n^3*pi^3)
pretty(c(n))
c(n)=simplify(subs(c(n),[(-1)^n-1,a^(1/2)*(1/a)^(1/2)],[-2,1]) )
%  c(n)=(8*15^(1/2))/(n^3*pi^3)   for n - odd

syms hp m real
Psi_term=c(n)*sqrt(2/a)*sin(n*pi*x/a)*exp(-i*(n^2*sym(pi)^2*hp*t)/(sym(2)*m*a^2))
% (8*2^(1/2)*15^(1/2)*exp(-(hp*n^2*t*pi^2*1i)/(2*a^2*m))*sin((pi*n*x)/a)*(1/a)^(1/2))/(n^3*pi^3)
pretty(Psi_term)