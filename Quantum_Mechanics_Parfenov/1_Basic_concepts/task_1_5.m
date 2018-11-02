clear
syms x a
Psi1=a*x
Psi2=a*x^2
Psi3=exp(a*x)
Psi4=exp(a*x^2)
Psi5=log(a*x)
Psi6=sin(a*x)

% a)
Psi12=OperDx(Psi1)
% a
Psi22=OperDx(Psi2)
% 2*a*x
Psi32=OperDx(Psi3)
% a*exp(a*x) = a*Psi3
Psi42=OperDx(Psi4)
% 2*a*x*exp(a*x^2)
Psi52=OperDx(Psi5)
% 1/x
Psi62=OperDx(Psi6)
% a*cos(a*x)

% b)
Psi13=OperD2x(Psi1)
% 0
Psi23=OperD2x(Psi2)
% 2*a
Psi33=OperD2x(Psi3)
% a^2*exp(a*x) = a^2*psi3
Psi43=OperD2x(Psi4)
% 2*a*exp(a*x^2) + 4*a^2*x^2*exp(a*x^2)
Psi53=OperD2x(Psi5)
% -1/x^2
Psi63=OperD2x(Psi6)
% -a^2*sin(a*x) = -a^2*Psi6

