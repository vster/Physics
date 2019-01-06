clear 
syms x y z real
syms Psi(x,y,z)

SwLxLy=simplify(OperLx(OperLy(Psi))-OperLy(OperLx(Psi)))
% hp^2*(x*diff(Psi(x, y, z), y) - y*diff(Psi(x, y, z), x))
SwLxLy/OperLz(Psi)
% hp*1i
% SwLxLy=1i*hp*Lz

SwLyLz=simplify(OperLy(OperLz(Psi))-OperLz(OperLy(Psi)))
% hp^2*(y*diff(Psi(x, y, z), z) - z*diff(Psi(x, y, z), y))
SwLyLz/OperLx(Psi)
% hp*1i
% SwLyLz=1i*hp*OperLx

SwLzLx=simplify(OperLz(OperLx(Psi))-OperLx(OperLz(Psi)))
% -hp^2*(x*diff(Psi(x, y, z), z) - z*diff(Psi(x, y, z), x))
SwLzLx/OperLy(Psi)
% hp*1i
% SwLzLx=1i*hp*OperLy

SwLxL2=simplify(OperLx(OperL2(Psi))-OperL2(OperLx(Psi)))
% 0
SwLyL2=simplify(OperLy(OperL2(Psi))-OperL2(OperLy(Psi)))
% 0
SwLzL2=simplify(OperLz(OperL2(Psi))-OperL2(OperLz(Psi)))
% 0