% Psi(x)=(3*Psi1+4*Psi2)/5
% <E>=(9/25)*E1+(16/25)*E2

syms m x real
syms Psi1(x) Psi2(x)
Psi=(3*Psi1+4*Psi2)/sqrt(5)

Ekm=simplify(int(Psi'*OperEx(Psi,m),x,-inf,inf))
% int(-(hp^2*(3*diff(Psi1(x), x, x) + 4*diff(Psi2(x), x, x))*(3*conj(Psi1(x)) + 4*conj(Psi2(x))))/(10*m), x, -Inf, Inf)
Ekm1=int(Psi1'*OperEx(Psi1,m),x,-inf,inf)
% int(-(hp^2*conj(Psi1(x))*diff(Psi1(x), x, x))/(2*m), x, -Inf, Inf)
Ekm2=int(Psi2'*OperEx(Psi2,m),x,-inf,inf)
% int(-(hp^2*conj(Psi2(x))*diff(Psi2(x), x, x))/(2*m), x, -Inf, Inf)

% Kinetic energy operator
function E=OperEx(psi,m)
syms x hp m real
E=-hp^2/(2*m)*diff(psi,x,2);
end