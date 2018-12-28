syms hi k x real
Psi=cos(hi)*exp(1i*k*x)+sin(hi)*exp(-1i*k*x)

px=simplify(Psi'*OperP(Psi))
% hp*k*(cos(2*hi) + sin(2*hi)*sin(2*k*x)*1i)
pxm=int(simplify(Psi'*OperP(Psi)),x)

nf=int(Psi'*Psi,x)

% ...?

% Impulse operator
function P=OperP(psi)
syms x hp 
P=-1i*hp*diff(psi,x);
end