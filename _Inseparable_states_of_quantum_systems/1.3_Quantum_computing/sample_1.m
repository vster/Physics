syms alfa beta gamma teta
I2=[1 0;0 1]
X=[0 1;1 0]
Y=[0 -1i;1i 0]
Z=[1 0;0 -1]
P(teta)=[1 0;0 exp(1i*teta)]
H=1/sqrt(2)*[1 1;1 -1]

% H,P(teta),H,P(0.5*pi+tau-teta/2),X P(gamma-teta/2),X
ket_psi_0=[1;0]

% 1)
ket_psi_1=sym(H*ket_psi_0,'r')
% 2^(1/2)/2
% 2^(1/2)/2

% 2)
ket_psi_2=P*ket_psi_1
%                2^(1/2)/2
% (2^(1/2)*exp(teta*1i))/2

% 3)
ket_psi_3=H*ket_psi_2
% exp(teta*1i)/2 + 1/2
% 1/2 - exp(teta*1i)/2

% 4)
syms tau
ket_psi_4=P(0.5*pi+tau-teta/2)*ket_psi_3
%                                          exp(teta*1i)/2 + 1/2
% -exp(tau*1i - (teta*1i)/2 + (pi*1i)/2)*(exp(teta*1i)/2 - 1/2)
% ...
ket_psi_4=[exp(1i*(teta/2-gamma))*alfa;beta]
% alfa*exp(- gamma*1i + (teta*1i)/2)
%                               beta

% 5)
ket_psi_5=X*ket_psi_4
%                               beta
% alfa*exp(- gamma*1i + (teta*1i)/2)

% 6)
ket_psi_6=simplify(P(gamma-teta/2)*ket_psi_5)
% beta
% alfa

% 7)
ket_psi_7=X*ket_psi_6
% alfa
% beta
% = ket_psi