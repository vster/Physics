% Prove
% m*d<x^2>/dt=<xp>+<px>
syms x m hp real
syms Psi(x)
% A=x^2

% eq1 = m*d<x^2>/dt
% d<x^2>/dt=1/(i*hp)*<[OperX2,OperH]>+<dOperA/dt>
Sw1=simplify(OperX2(OperH(Psi))-OperH(OperX2(Psi)))
% (hp^2*(Psi(x) + 2*x*diff(Psi(x), x)))/m
Sw1m=simplify(expand(int(Psi'*Sw1,x)))
% (hp^2*int(abs(Psi(x))^2, x))/m + (2*hp^2*int(x*conj(Psi(x))*diff(Psi(x), x), x))/m
eq1=simplify(Sw1m*m/(i*hp))
% - hp*int(abs(Psi(x))^2, x)*1i - hp*int(x*conj(Psi(x))*diff(Psi(x), x), x)*2i
dx2=int(Psi'*diff(x^2,t)*Psi,x)
% 0
eq1=eq1+dx2
% - hp*int(abs(Psi(x))^2, x)*1i - hp*int(x*conj(Psi(x))*diff(Psi(x), x), x)*2i

% eq2 = <xp>+<px>
xpm=int(Psi'*OperX(OperPx(Psi)),x)
% -int(hp*x*conj(Psi(x))*diff(Psi(x), x)*1i, x)
pxm=int(Psi'*OperPx(OperX(Psi)),x)
% -int(hp*conj(Psi(x))*(x*diff(Psi(x), x) + Psi(x))*1i, x)
eq2=simplify(expand(xpm+pxm))
% - hp*int(abs(Psi(x))^2, x)*1i - hp*int(x*conj(Psi(x))*diff(Psi(x), x), x)*2i

% Checking
d=simplify(eq1-eq2)
% 0

function X=OperX(psi)
syms x real
X=x*psi;
end

function X2=OperX2(psi)
syms x real
X2=x^2*psi;
end

function Px=OperPx(psi)
syms x hp real
assume(hp>0)
Px=-1i*hp*diff(psi,x);
end

% Kinetic energy operator
function E=OperE(psi)
syms x hp m real
E=-hp^2/(2*m)*diff(psi,x,2);
end

% Total energy operator (Hamiltonian)
function H=OperH(psi)
syms x real
syms U(x)
H=OperE(psi)+U*psi;
end
