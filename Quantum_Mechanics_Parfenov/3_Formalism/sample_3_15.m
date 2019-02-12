ket0=[1;0]
ket1=[0;1]
% |00>
ket00=kron(ket0,ket0)
% |01>
ket01=kron(ket0,ket1)
% |10>
ket10=kron(ket1,ket0)
% |11>
ket11=kron(ket1,ket1)