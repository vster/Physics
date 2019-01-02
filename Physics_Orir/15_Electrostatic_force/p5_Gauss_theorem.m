% Ph=int(S)E*dA=int(S)(E1+E2)dA = 
% = int(S)E1*dA + int(S)E2*dA
% int(S)E1*dA=4*pi*k0*Q1
% int(S)E2*dA=4*pi*k0*Q2
% Ph=4*pi*k0*Q1+4*pi*k0*Q2=4*pi*k0*(Q1+Q2)

% Gauss theorem
% int(S)E*dA=4*pi*k0*Qin          (15-7)

syms k0 Qin
Ph=4*pi*k0*Qin

syms N m C
Ph_si=subs(Ph,[k0 Qin],[N*m^2/C^2 C])
% (4*pi*N*m^2)/C ~ N*m^2/C

% Change k0 to 1/(4*pi*eps0)
% then
% int(S)E*dA=(1/eps0)*Qin       (15-8)