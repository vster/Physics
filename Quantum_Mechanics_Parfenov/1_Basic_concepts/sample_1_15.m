% The mean values of the coordinates and momentum operators
% ca in the one-dimensional case are determined by the expressions
% <x> = int(-inf:+inf) Psi' x Psi dx
% <px> = int(-inf:+inf) Psi' Oper_px Psi dx = 
%           = (-i*hp) int(-inf:+inf) Psi' (dPsi/dx) dx
syms x Psi(x)
xm=int(Psi'*OperX(Psi),x,-inf,inf)
% int(x*conj(Psi(x))*Psi(x), x, -Inf, Inf)
pm=int(Psi'*OperPx(Psi),x,-inf,inf)
% int(-hp*conj(Psi(x))*diff(Psi(x), x)*1i, x, -Inf, Inf)

% Mean values corresponding to potential and kinetic energy:
% <U> = int(-inf:+inf) Psi' U Psi dx
% <Ek> = int(-inf:+inf) Psi' Oper_E Psi dx = 
%           = (-hp/(2*m)) int(-inf:+inf) Psi' (d2Psi/dx2) dx
Um=int(Psi'*OperU(Psi),x,-inf,inf)
% int(U*conj(Psi(x))*Psi(x), x, -Inf, Inf)
Ekm=int(Psi'*OperEx(Psi),x,-inf,inf)
% int(-(hp^2*conj(Psi(x))*diff(Psi(x), x, x))/(2*m), x, -Inf, Inf)

% Coordinate operator
function x=OperX(f)
syms x real
x=x*f;
end

% Impulse operator
function Px=OperPx(psi)
syms x hp real
assume(hp>0)
Px=-1i*hp*diff(psi,x);
end

% Potential energy operator
function U1=OperU(psi)
syms x U(x)
U1=U*psi;
end

% Kinetic energy operator
function E=OperEx(psi)
syms x hp m real
E=-hp^2/(2*m)*diff(psi,x,2);
end