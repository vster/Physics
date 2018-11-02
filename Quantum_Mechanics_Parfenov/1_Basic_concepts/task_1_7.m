% a)
syms x
Psi=sin(2*x)
Psi1=OperA1(Psi)
% 4*sin(2*x) = 4 * Psi => a=4

% b)
Psi=exp(-x^2/2)
Psi1=OperA2(Psi)
% exp(-x^2/2) = 1 * Psi => a=1

% c)
syms x y z t hp k
syms Phi(y,z,t)
Psi=exp(1i*k*x/hp)*Phi(y,z,t)
Psi1=OperA3(Psi)
% k*exp((k*x*1i)/hp)*Phi(y, z, t) = k*Psi => a=k

function A1=OperA1(psi)
syms x real
A1=-diff(psi,x,2);
end

function A2=OperA2(psi)
syms x real
A2=-diff(psi,x,2)+x^2*psi;
end

function A3=OperA3(psi)
syms hp x real
A3=-1i*hp*diff(psi,x);
end

