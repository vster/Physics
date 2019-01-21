clear
format short
ket_H=[1;0]
ket_V=[0;1]
ket_R=[2^(1/2)/2;2^(1/2)/2]
ket_L=[-(2^(1/2)*1i)/2;(2^(1/2)*1i)/2]

[PH,PV]=PHV(ket_H)
[PH,PV]=PHV(ket_V)
[PH,PV]=PHV(ket_R)
[PH,PV]=PHV(ket_L)

[PR,PL]=PRL(ket_H)
[PR,PL]=PRL(ket_V)
[PR,PL]=PRL(ket_R)
[PR,PL]=PRL(ket_L)

function [PH,PV]=PHV(psi)
OpH=[1 0;0 0];
OpV=[0 0;0 1];
PH=psi'*OpH*psi;
PV=psi'*OpV*psi;
end

function [PR,PL]=PRL(psi)
OpR=[0.5 0.5;0.5 0.5];
OpL=[0.5 -0.5;-0.5 0.5];
PR=psi'*OpR*psi;
PL=psi'*OpL*psi;
end