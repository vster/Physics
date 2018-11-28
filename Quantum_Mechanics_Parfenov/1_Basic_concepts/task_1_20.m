clear
syms x y z hp real
syms Psi(x)

H1=OperH(Psi)

% a) [x,H)
Sw1=simplify(OperX(OperH(Psi))-OperH(OperX(Psi)))
% (diff(Psi(x), x)*hp^2 - m*U(x) + m*x*U(x))/m - ?
px=OperPx(Psi)

sk1=Sw1/px


% b) [px,H]
Sw2=simplify(OperPx(OperH(Psi))-OperH(OperPx(Psi)))
% - U(x) - hp*diff(U(x), x)*1i


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
H=OperEx(psi)+U(x);
end

% Kinetic energy operator
function E=OperEx(psi)
syms x hp m real
E=-hp^2/(2*m)*diff(psi,x,2);
end