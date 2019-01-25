clear
format short
ket_H=[1;0]
ket_V=[0;1]
ket_RD=[2^(1/2)/2;2^(1/2)/2]
ket_LD=[-2^(1/2)/2;2^(1/2)/2]
ket_RC=[1/2 - 1i/2;1/2 + 1i/2]
ket_LC=[- 1/2 - 1i/2;- 1/2 + 1i/2]


[PH,PV]=PrHV(ket_H)
[PH,PV]=PrHV(ket_V)
[PH,PV]=PrHV(ket_RD)
[PH,PV]=PrHV(ket_LD)
[PH,PV]=PrHV(ket_RC)
[PH,PV]=PrHV(ket_LC)

[PR,PL]=PrRL(ket_H)
[PR,PL]=PrRL(ket_V)
[PR,PL]=PrRL(ket_RD)
[PR,PL]=PrRL(ket_LD)
[PH,PV]=PrRL(ket_RC)
[PH,PV]=PrRL(ket_LC)

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