clear
syms x y z hp real
syms Psi(x) U(x)

H1=OperH(Psi)
% Psi(x)*U(x) - (hp^2*diff(Psi(x), x, x))/(2*m)

% a) [x,H]
Sw1=simplify(OperX(OperH(Psi))-OperH(OperX(Psi)))
% (hp^2*diff(Psi(x), x))/m
px=OperPx(Psi)
% -hp*diff(Psi(x), x)*1i
sk1=Sw1/px
% (hp*1i)/m
C1=Commutator(@OperX,@OperH,Psi)
% (hp^2*diff(Psi(x), x))/m

% b) [px,H]
Sw2=simplify(OperPx(OperH(Psi))-OperH(OperPx(Psi)))
% -hp*Psi(x)*diff(U(x), x)*1i
sk2=Sw2/Psi
% -hp*diff(U(x), x)*1i
% hp/1i*diff(U(x), x)
C2=Commutator(@OperPx,@OperH,Psi)
% -hp*Psi(x)*diff(U(x), x)*1i

% Commutator
function c=Commutator(f1,f2,psi)
c=simplify(f1(f2(psi))-f2(f1(psi)));
end

% Coordinate operator
function x=OperX(f)
syms x real
x=x*f;
end

% Impulse operator
function P=OperPx(f)
syms hp x real
P=-1i*hp*diff(f,x);
end

% Total energy operator (Hamiltonian)
function H=OperH(psi)
syms x m
syms U(x)
H=OperEx(psi)+U(x)*psi;
end

% Kinetic energy operator
function E=OperEx(psi)
syms x hp m real
E=-hp^2/(2*m)*diff(psi,x,2);
end