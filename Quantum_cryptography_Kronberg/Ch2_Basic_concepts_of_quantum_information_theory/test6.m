OpH=[1 0;0 0];
OpV=[0 0;0 1];

OpR=[0.5 0.5;0.5 0.5];
OpL=[0.5 -0.5;-0.5 0.5];


ket0=[1;0]
ket1=[0;1]
ket_R=(ket0+ket1)/sqrt(2)
ket_L=(ket1-ket0)/sqrt(2)

[Pr1,Pr2]=PrHV(ket0)
[Pr1,Pr2]=PrHV(ket1)
[Pr1,Pr2]=PrHV(ket_R)
[Pr1,Pr2]=PrHV(ket_L)

[Pr1,Pr2]=PrRL(ket0)
[Pr1,Pr2]=PrRL(ket1)
[Pr1,Pr2]=PrRL(ket_R)
[Pr1,Pr2]=PrRL(ket_L)


function [PrH,PrV]=PrHV(psi)
OpH=[1 0;0 0];
OpV=[0 0;0 1];
ro=psi*psi'
PrH=trace(OpH*ro);
PrV=trace(OpV*ro);
end

function [PrR,PrL]=PrRL(psi)
OpR=[0.5 0.5;0.5 0.5];
OpL=[0.5 -0.5;-0.5 0.5];
ro=psi*psi'
PrR=trace(OpR*ro);
PrL=trace(OpL*ro);
end