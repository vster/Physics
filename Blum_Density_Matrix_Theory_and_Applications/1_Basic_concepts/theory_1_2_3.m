% Quantum-mechanical concept of photon spin

% e+-1=-+(1/2^(1/2))*(ex+-i*ey)                          (1.2.8)
% |+-1>=-+(1/2^(1/2))*(|ex>+-i|ey>)                      (1.2.9)
% |e>=a1*|+1>+a2*|-1>                                    (1.2.10)

ket_p1=[1;0]
ket_m1=[0;1]                                      % (1.2.11)

syms a1 a2
ket_e=a1*ket_p1+a2*ket_m1                         % (1.2.11a)
% a1
% a2
bra_e=ket_e'
% [ conj(a1), conj(a2)]                           % (1.2.11b)
ket_ex=-(1/2^(1/2))*(ket_p1-ket_m1)               % (1.2.12a)
%     0.7071
%    -0.7071
ket_ey=(1i/2^(1/2))*(ket_p1+ket_m1)                % (1.2.12b)
%    0.0000 + 0.7071i
%    0.0000 + 0.7071i