clear
syms x y z hp real
syms Psi(x,y,z)

% a) [Lx,Ly]
Lz=simplify(OperLz(Psi))
% hp*y*diff(Psi(x), x)*1i
Sw1=simplify(OperLx(OperLy(Psi))-OperLy(OperLx(Psi)))
% hp^2*(x*diff(Psi(x, y, z), y) - y*diff(Psi(x, y, z), x))
k1=Sw1/Lz
% hp*1i
% Sw1 = hp*1i*Lz


% Momentum operator Lx
function Lx=OperLx(psi)
syms hp
syms x y z
Lx=-i*hp*(y*diff(psi,z)-z*diff(psi,y));
end

% Momentum operator Ly
function Ly=OperLy(psi)
syms hp
syms x y z
Ly=-i*hp*(z*diff(psi,x)-x*diff(psi,z));
end

% Momentum operator Lz
function Lz=OperLz(psi)
syms hp
syms x y z
Lz=-i*hp*(x*diff(psi,y)-y*diff(psi,x));
end