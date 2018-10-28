% Hermiticity of operators
% int psi'*OperA(phi) dx =int (OperA(psi))'*phi dx

syms x psi(x) phi(x)
I1=int(psi(x)'*OperA(phi(x)),x)
% int(C*conj(psi(x)), x)
I2=int(OperA(psi(x))'*phi(x),x)
% int(conj(C)*phi(x), x)

function A=OperA(psi)
syms C
A=C
end