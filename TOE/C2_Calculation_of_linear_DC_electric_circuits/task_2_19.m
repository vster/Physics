E1=24 % V
E2=12 % V
Rs=2 % Om
R1=10 % Om
R=20 % Om
R2=4 % Om

% I1+I3-I2=0
% I1*R1-I3*R=E1
% I2*R2+I3*R=-E2

% I1-I2+I3=0
% 10*I1+0-20*I3=24
% 0+4*I2+20*I3=-12

IM=[1,-1, 1;...
    10,0,-20;...
    0,4, 20]
EV=[0;24;-12]
IM1=IM^(-1)
IV=IM1*EV
