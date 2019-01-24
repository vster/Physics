syms H1 H2 V1 V2
syms cH cV dH dV
ket_psi=[cH;cV]
ket_hi=[dH;dV]

% |psi>(*)|hi>
kron(ket_psi,ket_hi)
% cH*dH                                               (34)
% cH*dV
% cV*dH
% cV*dV

% (A(*)B)ik,jk=Aij*Bkl                                (35)

OpA=sym('a',[2 2])
OpB=sym('b',[2 2])
I=[1 0;0 1]
kron(OpA,I)
kron(I,OpB)

% (OpA(*)OpB)|psi>(*)|hi>=OpA|psi>(*)OpB|hi>            (36)
V1=kron(OpA,OpB)*kron(ket_psi,ket_hi)
V2=kron(OpA*ket_psi,OpB*ket_hi)
V3=simplify(V2-V1)                     
% [0;0;0;0]

ket_H=[1;0]
ket_V=[0;1]
syms c1 c2 c3 c4
% |Psi>=c1|H>|H>+c2|H>|V>+c3|V>|H>+c4|V>|V>               (37)
ket_Psi=c1*kron(ket_H,ket_H)+c2*kron(ket_H,ket_V)+...
        c3*kron(ket_V,ket_H)+c4*kron(ket_V,ket_V)
    
% Example
ket_Psi1=1/sqrt(2)*(kron(ket_H,ket_V)+kron(ket_V,ket_H))
    
ket_HH=kron(ket_H,ket_H)
ket_HV=kron(ket_H,ket_V)
ket_VH=kron(ket_V,ket_H)   
ket_VV=kron(ket_V,ket_V)

