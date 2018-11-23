clear
syms x real
syms Psi(x)

Sw=simplify(OperX(OperPx(Psi))-OperPx(OperX(Psi)))
% hp*Psi(x)*1i

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