% Hermiticity of operators
% int psi'*OperA(phi) dx =int (OperA(psi))'*phi dx

% Hermiticity of OperP
syms x real
syms psi(x) phi(x)
I1=int(psi(x)'*OperP(phi(x)),x)
% int(-hp*conj(psi(x))*diff(phi(x), x)*1i, x)
I2=int((OperP(psi(x)))'*phi(x),x)
% int(hp*conj(diff(psi(x), x))*phi(x)*1i, x)

% Hermiticity of OperR
I1=int(psi(x)'*OperR(phi(x),x),x)
% int(x*conj(psi(x))*phi(x), x)
I2=int((OperR(psi(x),x))'*phi(x),x)
% int(x*conj(psi(x))*phi(x), x)
% I1=I2 (!)



% Coordinate operator
function R=OperR(psi,r)
R=r*psi;
end

% Impulse operator
function P=OperP(psi)
syms hp real
P=-1i*hp*gradient(psi);
end

% Kinetic energy operator
function E=OperE(psi,m)
syms hp real
E=-hp^2/(2*m)*laplacian(psi);
end

% Total energy operator (Hamiltonian)
function H=OperH(psi,m,U)
H=OperE(psi,m)+U;
end

function L=OperL(psi)
syms hp real
syms x y z real
R=[x y z];
P=-1i*hp*[diff(psi,x) diff(psi,y) diff(psi,z)];
L=cross(R,P);
end