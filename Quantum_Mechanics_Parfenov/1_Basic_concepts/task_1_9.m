syms hi k x hp real
assume(k>0)
Psi=cos(hi)*exp(1i*k*x)+sin(hi)*exp(-1i*k*x)

px=simplify(Psi'*OperP(Psi))
% hp*k*(cos(2*hi) + sin(2*hi)*sin(2*k*x)*1i)
pxm=int(simplify(Psi'*OperP(Psi)),x)

nf=int(Psi'*Psi,x)

% a)
p1=int(hp*k*OperP(Psi),x)
% - hp^2*k*cos(hi)*(cos(k*x) + sin(k*x)*1i)*1i - hp^2*k*sin(hi)*(cos(k*x) - sin(k*x)*1i)*1i
p1= - hp^2*k*(cos(hi)*exp(i*k*x)*1i+sin(hi)*exp(-i*k*x)*1i)

p2=int((-hp*k)*OperP(Psi),x)
% hp^2*k*cos(hi)*(cos(k*x) + sin(k*x)*1i)*1i + hp^2*k*sin(hi)*(cos(k*x) - sin(k*x)*1i)*1i
p2= hp^2*k*(cos(hi)*exp(i*k*x)*1i + sin(hi)*exp(-i*k*x)*1i)

% Impulse operator
function P=OperP(psi)
syms x hp 
P=-1i*hp*diff(psi,x);
end