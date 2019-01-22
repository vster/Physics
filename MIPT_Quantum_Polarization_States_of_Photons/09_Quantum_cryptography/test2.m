clear
format short
ket_H=[1;0]
ket_V=[0;1]
ket_R=[2^(1/2)/2;2^(1/2)/2]
ket_L=[-2^(1/2)/2;2^(1/2)/2]

[PH,PV]=PrHV(ket_H)
[PH,PV]=PrHV(ket_V)
[PH,PV]=PrHV(ket_R)
[PH,PV]=PrHV(ket_L)

[PR,PL]=PrRL(ket_H)
[PR,PL]=PrRL(ket_V)
[PR,PL]=PrRL(ket_R)
[PR,PL]=PrRL(ket_L)

function [PrH,PrV]=PrHV(psi)
OpH=[1 0;0 0];
OpV=[0 0;0 1];
PrH=psi'*OpH*psi;
PrV=psi'*OpV*psi;
end

function [PrR,PrL]=PrRL(psi)
OpR=[0.5 0.5;0.5 0.5];
OpL=[0.5 -0.5;-0.5 0.5];
PrR=psi'*OpR*psi;
PrL=psi'*OpL*psi;
end