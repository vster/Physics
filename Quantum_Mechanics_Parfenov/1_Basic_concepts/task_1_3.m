% Hermiticity of operators
% int psi'*OperA(phi) dx =int (OperA(psi))'*phi dx

% Hermiticity of OperX
syms x real
syms psi(x) phi(x)
I1=int(psi(x)'*OperX(phi(x)),x)
% int(x*conj(psi(x))*phi(x), x)
I2=int((OperX(psi(x)))'*phi(x),x)
% int(x*conj(psi(x))*phi(x), x)

% Hermiticity of OperL
syms psi(z) phi(z)
I1=int(psi(z)'*OperL(phi(z)),z)
% 
I2=int((OperL(psi(z)))'*phi(z),z)
% 


% Coordinate operator
function X=OperX(psi)
syms x real
X=x*psi;
end

function L=OperL(psi)
syms hp real
syms x y z real
R=[x y z];
P=-1i*hp*[diff(psi,x) diff(psi,y) diff(psi,z)];
L=cross(R,P);
end