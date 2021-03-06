syms x hp real
syms Psi(x)

% a) [x^2,px]
C1=simplify(OperX2(OperP(Psi))-OperP(OperX2(Psi)))
% hp*x*Psi(x)*2i
C12=Commutator(@OperX2,@OperP,Psi)
% hp*x*Psi(x)*2i

% b) [x,px2]
C2=simplify(OperX(OperP2(Psi))-OperP2(OperX(Psi)))
% 2*hp^2*diff(Psi(x), x)
pp=2*i*hp*OperP(Psi)
% 2*hp^2*diff(Psi(x), x)
C22=Commutator(@OperX,@OperP2,Psi)
% 2*hp^2*diff(Psi(x), x)

% c) [d/dx,d/dy]
syms x y
syms Psi(x,y)
C3=simplify(OperDx(OperDy(Psi))-OperDy(OperDx(Psi)))
% 0
C31=Commutator(@OperDx,@OperDy,Psi)
% 0

% d)[d2/dx2,x^2]
syms x
syms Psi(x)
C4=simplify(OperD2x(OperX2(Psi))-OperX2(OperD2x(Psi)))
% 2*Psi(x) + 4*x*diff(Psi(x), x)
C41=Commutator(@OperD2x,@OperX2,Psi)
% 2*Psi(x) + 4*x*diff(Psi(x), x)

% e)[d2/dx2,x3]
C5=simplify(OperD2x(OperX3(Psi))-OperX3(OperD2x(Psi)))
% 6*x*Psi(x) + 6*x^2*diff(Psi(x), x)
CS51=Commutator(@OperD2x,@OperX3,Psi)
% 6*x*Psi(x) + 6*x^2*diff(Psi(x), x)

% Commutator
function c=Commutator(f1,f2,f)
c=simplify(f1(f2(f))-f2(f1(f)));
end

% Coordinate X operator
function X=OperX(psi)
syms x real
X=x*psi;
end

% Coordinate X^2 operator
function X2=OperX2(psi)
syms x real
X2=x^2*psi;
end

% Coordinate X^3 operator
function X3=OperX3(psi)
syms x real
X3=x^3*psi;
end

% Impulse operator
function P=OperP(psi)
syms x hp real
P=-1i*hp*diff(psi,x);
end

function P2=OperP2(psi)
syms x hp real
P2=OperP(OperP(psi));
end

function Dx=OperDx(psi)
syms x real
Dx=diff(psi,x);
end

function D2x=OperD2x(psi)
syms x real
D2x=diff(psi,x,2);
end

function Dy=OperDy(psi)
syms y real
Dy=diff(psi,y);
end