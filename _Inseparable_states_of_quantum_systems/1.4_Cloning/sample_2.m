CNOT=[1 0 0 0;...
      0 1 0 0;...
      0 0 0 1;...
      0 0 1 0]
  
syms alfa beta
ket_psi=[alfa;beta]
ket_0=[1;0]
  
ket_psi_0=kron(ket_psi,ket_0)
% alfa
%    0
% beta
%    0

CNOT_ket_psi=CNOT*ket_psi_0
% alfa
%    0
%    0
% beta
% =alfa|00>+beta|11>

ket_psi_2=kron(ket_psi,ket_psi)
%    alfa^2
% alfa*beta
% alfa*beta
%    beta^2
% alfa^2|00>+alfa*beta|01>+alfa*beta|10>+beta^2|11>

% alfa^2=alfa,beta^2=beta,alfa*beta=0