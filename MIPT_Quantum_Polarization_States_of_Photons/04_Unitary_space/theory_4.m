% Unitary space
% (|phi>,|psi>) <-> <phi|psi> - scalar product
% 1. <phi|psi>=(<psi|phi>)*
% 2. (|phi>,a*|psi1>+b*|psi2>)=a*<phi|psi1>+b*<phi|psi2>
% 3. <psi|psi> - real and <psi|psi> >= 0
% and <psi|psi>=0 <=> |psi>=0 - zero element of space
% From 1. and 2. follows
% (a*|phi1>+b*|phi2>,|psi>)=a'*<phi1|psi>+b'*<phi2|psi>       (7)
clear
syms c1 c2
ket_psi=[c1;c2]
bra_psi=ket_psi'
% [ conj(c1), conj(c2)]
% Hermitian mating operation of matrix + = T* = *T that performs 
% transposition and complex mating

n=2
m=3
A=sym('a',[n,m])
Ae=A'

ket_phi=sym('d',[2,1])
bra_phi=ket_phi'
ket_psi=sym('c',[2,1])
bra_psi=ket_psi'
% <phi|psi>
bra_phi*ket_phi
% d1*conj(d1) + d2*conj(d2)                       (10)
% Let |hi>=A*|psi> where A is operator OpA
OpA=sym('a',[2,2])

%<phi|hi>=(|phi>,A*|psi>)=<phi|A|psi>=(|psi>,A'|phi>)'=(A'|phi>,|psi>) (12)
P1=bra_phi*OpA*ket_psi
expand(P1)
% c1*(a1_1*conj(d1) + a2_1*conj(d2)) + c2*(a1_2*conj(d1) + a2_2*conj(d2))
% (A'*|phi>,|psi>)
P2=dot(OpA'*ket_phi,ket_psi)
expand(P2)
% a1_1*c1*conj(d1) + a1_2*c2*conj(d1) + a2_1*c1*conj(d2) + a2_2*c2*conj(d2)
% We see that P1=P2

% That is
% (|phi>,A*|psi>)=(A'|phi>,|psi>)
% or
% <phi|A*psi>=<A'*phi|psi>

% Definition 3.
% The matrix A is called Hermitian if A=A'

% Definition 4.
% A nondegenerate square matrix U is called unitary if
% U'*U=U*U'=I, that is U^(-1)=U'


