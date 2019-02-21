% U(x)=-alfa*delta(x)
clear
syms x t m hp alfa E real
Psi(x,t)=sqrt(m*alfa)/hp*exp(-m*alfa*abs(x)/hp^2)*exp(-i*E*t/hp)
syms p real
syms pi
% Phi(p,t)=1/(2*pi)^(3/2)*int(exp(-i*p*x)*Psi(x,t),x,-inf,inf)
syms p0 real
Phi(p,t)=sqrt(2/pi)*p0^(3/2)*exp(-i*E*t/hp)/(p^2+p0^2)
Pp=int(Phi'*Phi,p,p0,inf)