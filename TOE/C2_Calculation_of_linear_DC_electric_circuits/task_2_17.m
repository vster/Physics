% -I1-I3-I4=0
% I1+I4+I5-I2=0
% I1*R1-I4*R4=E1
% I4*R4-I5*R5-I3*R3=E3
% I2*R2+I5*R5=-E2

IM=[-1, 0,-1,-1, 0;... 
     1,-1, 0, 1, 1;...
     2, 0, 0,-2, 0;...
     0, 0,-2, 2,-2;...
     0, 2, 0, 0, 2]
EV=[0;0;10;10;-10]
IM1=IM^(-1)
IV=IM1*EV

IV.'
%     3.7500   -1.2500   -2.5000   -1.2500   -3.7500