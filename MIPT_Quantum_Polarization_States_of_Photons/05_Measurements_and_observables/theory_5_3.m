% Rotate the polarization plane

syms c1 c2
ket_psi=[c1;c2]
U=1/sqrt(2)*[1 1;-1 1]

% |psi> -> |phi>=U*|psi>
ket_phi=U*ket_psi
%  (2^(1/2)*c1)/2 + (2^(1/2)*c2)/2                     (18)
%  (2^(1/2)*c2)/2 - (2^(1/2)*c1)/2
bra_phi=ket_phi'

sig3=[1 0;0 -1]

% <Xphv>=<phi|sig3|phi>=<psi|U'*sig3*U|psi>            (19)
Xphv=bra_phi*sig3*ket_phi
% ((2^(1/2)*conj(c1))/2 + (2^(1/2)*conj(c2))/2)*((2^(1/2)*c1)/2 + (2^(1/2)*c2)/2) - ((2^(1/2)*conj(c1))/2 - (2^(1/2)*conj(c2))/2)*((2^(1/2)*c1)/2 - (2^(1/2)*c2)/2)
% And so
% <Xphv>=<psi|sig1|psi>
% where
% sig1=U'*sig3*U
sig1=U'*sig3*U                                         % (20)
%          0    1.0000
%     1.0000         0
[V,D]=eig(sig1)
% Eigvectors
%    -0.7071    0.7071
%     0.7071    0.7071
% Eigvalues
%   -1.0000         0
%         0    1.0000

ket_psi1=1/sqrt(2)*[1;1]    % lin 45 gr
U*ket_psi1  % =|H> = ket_H    lin 0 gr
%     1.0000
%     0.0000

ket_psi2=1/sqrt(2)*[1;-1]     % lin -45 gr
U*ket_psi2  % =-|V> = -ket_V    lin -90 gr
%    -0.0000
%    -1.0000

% <psi|sig1|psi> is called the 1st Stokes parameter
bra_psi*sig1*ket_psi
% c1*conj(c2) + c2*conj(c1) = 2*Re(c1'*c2)
