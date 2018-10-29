
% Hermiticity of OperDx
syms x real
syms psi(x) phi(x)
I1=int(psi(x)'*OperDx(phi(x)),x)
% int(conj(psi(x))*diff(phi(x), x), x)
I2=int((OperDx(psi(x)))'*phi(x),x)
% int(conj(diff(psi(x), x))*phi(x), x)

% Hermiticity of OperXdx
I1=int(psi(x)'*OperXDx(phi(x)),x)
% int(x*conj(psi(x))*diff(phi(x), x), x)
I2=int((OperXDx(psi(x)))'*phi(x),x)
% int(x*conj(diff(psi(x), x))*phi(x), x)


% Diff Operator
function Dx=OperDx(psi)
syms x real
Dx=diff(psi,x);
end

% XDiff Operator
function XDx=OperXDx(psi)
syms x real
XDx=x*diff(psi,x);
end

