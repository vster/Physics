% OperP2, OperLx, OperLy

% OperH=OperP2/(2*m)+U(|r|)
syms r
syms Psi(r)

% [OperP2,OperP2]
sw1=simplify(OperP2(OperP2(Psi))-OperP2(OperP2(Psi)))
% 0
% [OperR,OperP2]
sw2=simplify(OperR(OperP2(Psi))-OperP2(OperR(Psi)))
% 2*hp^2*diff(Psi(r), r)

% [OperP2,OperLx]
sw1=simplify(OperP2(OperLx(Psi))-OperLx(OperP2(Psi)))
% 0
% [OperR,OperLx]
sw2=simplify(OperR(OperLx(Psi))-OperLx(OperR(Psi)))
% 0

% [OperP2,OperLy]
sw1=simplify(OperP2(OperLy(Psi))-OperLy(OperP2(Psi)))
% 0
% [OperR,OperLy]
sw2=simplify(OperR(OperLy(Psi))-OperLy(OperR(Psi)))
% 0

function R=OperR(psi)
syms r
R=r*psi;
end

function P=OperP(psi)
syms r hp real
assume(hp>0)
P=-1i*hp*diff(psi,r);
end

function P2=OperP2(psi)
syms r hp real
assume(hp>0)
P2=OperP(OperP(psi));
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