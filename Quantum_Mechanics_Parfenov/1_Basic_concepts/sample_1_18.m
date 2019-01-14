clear
syms x real
syms Psi(x)

C1=simplify(OperX(OperPx(Psi))-OperPx(OperX(Psi)))
% hp*Psi(x)*1i
C2=Commutator(@OperX,@OperPx,Psi)
% hp*Psi(x)*1i

% Commutator
function c=Commutator(f1,f2,f)
c=simplify(f1(f2(f))-f2(f1(f)));
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