% OperH=OperP2/(2*m)+U(|r|)
syms r
syms Psi(r)
sw1=simplify(OperP2(OperP(Psi))-OperP(OperP2(Psi)))
% 0
sw2=simplify(OperR(OperP(Psi))-OperP(OperR(Psi)))
% hp*Psi(r)*1i 
sk2=sw2/Psi(r)
% hp*1i /= 0

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