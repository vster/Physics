% Psi(x)=(3*Psi1+4*Psi2)/5
% <E>=(9/25)*E1+(16/25)*E2

syms m x real
syms Psi1(x) Psi2(x)
Psi=(3*Psi1+4*Psi2)/sqrt(25)

Ekm1=int(Psi1'*OperEx(Psi1,m),x)
% -int((hp^2*conj(Psi1(x))*diff(Psi1(x), x, x))/(2*m), x)
Ekm2=int(Psi2'*OperEx(Psi2,m),x)
% -int((hp^2*conj(Psi2(x))*diff(Psi2(x), x, x))/(2*m), x)

Ekm=simplify(int(Psi'*OperEx(Psi,m),x))
% -int((hp^2*((3*diff(Psi1(x), x, x))/5 + (4*diff(Psi2(x), x, x))/5)*((3*conj(Psi1(x)))/5 + (4*conj(Psi2(x)))/5))/(2*m), x)
Ekm=expand(Ekm)
% - int((6*hp^2*conj(Psi1(x))*diff(Psi2(x), x, x))/(25*m), x) - int((6*hp^2*conj(Psi2(x))*diff(Psi1(x), x, x))/(25*m), x) - int((8*hp^2*conj(Psi2(x))*diff(Psi2(x), x, x))/(25*m), x) - int((9*hp^2*conj(Psi1(x))*diff(Psi1(x), x, x))/(50*m), x)
%  - int((8*hp^2*conj(Psi2(x))*diff(Psi2(x), x, x))/(25*m), x) - int((9*hp^2*conj(Psi1(x))*diff(Psi1(x), x, x))/(50*m), x)
% Ekm=(16/25)*Ekm1+(9/25)*Ekm2

% Kinetic energy operator
function E=OperEx(psi,m)
syms x hp m real
E=-hp^2/(2*m)*diff(psi,x,2);
end