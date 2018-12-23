E1=200
E2=-300
E3=0
LAB=3e-3
LBC=5e-3
VA=0
VB=VA+E1*LAB
% 0.6000 V
VC=VB+E2*LBC
% -0.9000 V

% EA-EB-EC=E1=200
% EA+EB-EC=E2=300
% EA+EB+EC=E3=0

Mat1=[1 -1 -1;1 1 -1;1 1 1]
Vec1=[200;300;0]
Sol1=Mat1^(-1)*Vec1
Sol1'
% 100    50  -150
digits(3)
VecSig=vpa(Sol1/(2*pi*9e9))
% sigA=  1.77e-9 Q/m^2
% sigB= 8.84e-10 Q/m^2
% sigC  -2.65e-9 Q/m^2