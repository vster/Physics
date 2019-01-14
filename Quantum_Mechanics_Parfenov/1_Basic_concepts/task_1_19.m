clear
syms x y z hp real
syms Psi(x,y,z)

% a) [Lx,Ly]
Lz=simplify(OperLz(Psi))
% -hp*(x*diff(Psi(x, y, z), y) - y*diff(Psi(x, y, z), x))*1i
Sw1=simplify(OperLx(OperLy(Psi))-OperLy(OperLx(Psi)))
% hp^2*(x*diff(Psi(x, y, z), y) - y*diff(Psi(x, y, z), x))
sk1=Sw1/Lz
% hp*1i
% = hp*1i*Lz
C1=Commutator(@OperLx,@OperLy,Psi)
% hp^2*(x*diff(Psi(x, y, z), y) - y*diff(Psi(x, y, z), x))

% b) [Lx,y]
Sw2=simplify(OperLx(OperY(Psi))-OperY(OperLx(Psi)))
% hp*z*Psi(x, y, z)*1i
sk2=Sw2/Psi
% hp*z*1i
% = i*hp*z
C2=Commutator(@OperLx,@OperY,Psi)
% hp*z*Psi(x, y, z)*1i

% c) [Lx,py]
Sw3=simplify(OperLx(OperPy(Psi))-OperPy(OperLx(Psi)))
% hp^2*diff(Psi(x, y, z), z)
pz=OperPz(Psi)
% -hp*diff(Psi(x, y, z), z)*1i
sk3=Sw3/pz
% hp*1i
% = i*hp*pz  -?
C3=Commutator(@OperLx,@OperPy,Psi)
% hp^2*diff(Psi(x, y, z), z)

% d) [px,Lz]
Sw4=simplify(OperPx(OperLz(Psi))-OperLz(OperPx(Psi)))
% -hp^2*diff(Psi(x, y, z), y)
py=OperPy(Psi)
% -hp*diff(Psi(x, y, z), y)*1i
sk4=Sw4/py
% -hp*1i
% =-1i*hp*py
C4=Commutator(@OperPx,@OperLz,Psi)
% -hp^2*diff(Psi(x, y, z), y)

% e) [Lx,Lz]
Sw5=simplify(OperLx(OperLz(Psi))-OperLz(OperLx(Psi)))
% hp^2*(x*diff(Psi(x, y, z), z) - z*diff(Psi(x, y, z), x))
Ly=OperLy(Psi)
% hp*(x*diff(Psi(x, y, z), z) - z*diff(Psi(x, y, z), x))*1i
sk5=Sw5/Ly
% -hp*1i
% =-1i*hp*Ly  -?
C5=Commutator(@OperLx,@OperLz,Psi)
% hp^2*(x*diff(Psi(x, y, z), z) - z*diff(Psi(x, y, z), x))

% Commutator
function c=Commutator(f1,f2,psi)
c=simplify(f1(f2(psi))-f2(f1(psi)));
end

% Coordinate operator
function y=OperY(psi)
syms x y z hp real
y=y*psi;
end

% Impulse operator
function P=OperPx(psi)
syms x y z hp real
P=-1i*hp*diff(psi,x);
end

% Impulse operator
function P=OperPy(psi)
syms x y z hp real
P=-1i*hp*diff(psi,y);
end

% Impulse operator
function P=OperPz(psi)
syms x y z hp real
P=-1i*hp*diff(psi,z);
end

% Momentum operator Lx
function Lx=OperLx(psi)
syms x y z hp real
Lx=-i*hp*(y*diff(psi,z)-z*diff(psi,y));
end

% Momentum operator Ly
function Ly=OperLy(psi)
syms x y z hp real
Ly=-i*hp*(z*diff(psi,x)-x*diff(psi,z));
end

% Momentum operator Lz
function Lz=OperLz(psi)
syms x y z hp real
Lz=-i*hp*(x*diff(psi,y)-y*diff(psi,x));
end