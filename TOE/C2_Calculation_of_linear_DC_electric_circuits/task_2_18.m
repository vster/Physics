R1=2
R2=2
R3=2
R4=2
R5=2
E1=10
E2=10
E3=10
% 4*I11-2*I22+0=10
% -2*I11+6*I22-2*I33=10
% 0-2*I22+4*I33=-10

IM=[4 -2 0;-2 6 -2;0 -2 4]
%     4    -2     0
%    -2     6    -2
%     0    -2     4
EM=[10;10;-10]
%    10
%    10
%   -10
IM1=IM^(-1)
%    0.3125    0.1250    0.0625
%    0.1250    0.2500    0.1250
%    0.0625    0.1250    0.3125
IV=IM1*EM
%    3.7500
%    2.5000
%   -1.2500    