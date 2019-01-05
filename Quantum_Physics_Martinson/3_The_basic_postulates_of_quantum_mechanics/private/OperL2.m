function L2=OperL2(psi)
L2=OperLx(OperLx(psi))+OperLy(OperLy(psi))+OperLz(OperLz(psi));
L2=simplify(L2);
end