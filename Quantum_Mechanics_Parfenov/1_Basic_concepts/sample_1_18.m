clear
syms x real
syms Psi(x)

S1=simplify(OperX(OperPx(Psi))-OperPx(OperX(Psi)))
% hp*Psi(x)*1i
S2=Sw(@OperX,@OperPx,Psi)
% hp*Psi(x)*1i

% Switch
function s=Sw(f1,f2,f)
s=simplify(f1(f2(f))-f2(f1(f)));
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