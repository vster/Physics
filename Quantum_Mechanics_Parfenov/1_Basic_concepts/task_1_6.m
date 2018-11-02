syms x k
Psi1=exp(-k*x^2)
Psi2=x^2
Psi3=cos(k*x)+sin(k*x)

Psi12=simplify(OperD2x(Psi1))
% 2*k*exp(-k*x^2)*(2*k*x^2 - 1)
Psi22=simplify(OperD2x(Psi2))
% 2
Psi23=OperD2x(Psi3)
% - k^2*cos(k*x) - k^2*sin(k*x)
% OperD2x(Psi3)=-k^2*Psi3
