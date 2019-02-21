clear
syms x A a real
Psi(x)=A/(x^2+a^2)
% (-inf<x<inf)
P=int(Psi'*Psi,x,-inf,inf)
% (pi*A^2)/(2*(a^2)^(3/2))
A1=solve(P==1,A)
A1=A1(1)
% (2^(1/2)*((a^2)^(3/2))^(1/2))/pi^(1/2)
A1=sqrt(2*a^3/pi)
Psi(x)=subs(Psi,A,A1)
% (2^(1/2)*(a^3)^(1/2))/(pi^(1/2)*(a^2 + x^2))

xm=int(Psi'*x*Psi,x,-inf,inf)
% 0
x2m=int(Psi'*x^2*Psi,x,-inf,inf)
% abs(a)^4/a^2
sigx=sqrt(x2m-xm^2)
% abs(a)^2*(1/a^2)^(1/2)
% a

syms p real
syms pi
Phi(p)=1/(2*pi)^(3/2)*int(exp(-i*p*x)*Psi(x),x,-inf,inf)