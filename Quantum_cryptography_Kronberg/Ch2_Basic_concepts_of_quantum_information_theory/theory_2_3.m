% Compound Quantum Systems

% Tensor product

ket0=[1;0]
ket1=[0;1]

ket00=[ket0;ket0]
ket01=[ket0;ket1]
ket01=[ket1;ket0]
ket11=[ket1;ket1]

% <ei(*)fj|em(*)fn> =<ei|em>*<fj|fn>            (2.12)

% (A1(*)A2)|e1(*)e2>=(A1|e1>)(*)<A2|e2>)

ket_psi_epr=1/sqrt(2)*(ket00+ket11)
%    0.7071
%    0.7071
%    0.7071
%    0.7071

syms a1 b1 a2 b2
kron(a1*ket0+b1*ket1,a2*ket0+b2*ket1)   % ~=ket_psi_epr
% a1*a2
% a1*b2
% a2*b1
% b1*b2