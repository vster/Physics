clear
ket_H=[1;0]
bra_H=ket_H'
ket_V=[0;1]
P=ket_H*bra_H                                 % (13)
%     1     0
%     0     0

% |psi>=c1*|H>+c2*|V>
syms c1 c2
ket_psi=c1*ket_H+c2*ket_V
bra_psi=ket_psi'

% P*|psi>=|H><H||psi>=|H><H|psi>=<H|psi>|H>=c1*|H>=[c1;0]       (14)
P*ket_psi
%  c1
%   0
% We see that the vector norm is |c1|^2<=1
% Experience shows that the probability to fix a photon by 
% the detector is exactly equal |c1|^2. 
% This probability is |<H*|psi>|^2. 
% The probability of absorption is equal 
% 1-|c1|^2=|c2|^2=|<V|psi>|^2

% The task of finding eigenvectors and eigenvalues of a matrix.
% A|f>=lam*|f>                          (15)
% Solve equation 
% det(A-lam*I)=0
% then solve system of equations
% (A-lam*I)|f>=0
% The matrix P is Hermitian, its eigenvalues are 1 and 0, 
% the eigenvectors |H> and |V>.

% Probability of outcome "1" is |<H|psi>|^2=|<psi|H>|^2
% Probability of outcome "0" is |<V|psi>|^2=|<psi|V>|^2
% 1*|c1|^2+0*|c2|^2=bra_psi*P*ket_psi=<psi|P|psi>=<P>
Pm=bra_psi*P*ket_psi
% c1*conj(c1)
Pm=simplify(Pm)
% abs(c1)^2

% <P>=<psi|P|psi>
% Pphysval={1,0}
% then
% <Pphysval>=<psi|P|psi>                             (16)

