R1=4 % Om
R2=4 % Om
R3=1 % Om
R4=1 % Om
R5=6 % om
E=9 % V

% 1
% Choose directions I1,I2,I3,I4,I5

% 2
R12=R1*R2/(R1+R2)
% 2 Om
R123=R12+R3
% 3 Om
R12345=R123*R5/(R123+R5)
% 2 Om

% 3
I4=E/(R12345+R4)
% 3 A
U34=I4*R12345
% 6 V

% 4
I3=U34/(R12+R3)
% 2 A
I5=U34/R5
% 1 A

% 5
U12=I3*R12
% 4 V
I1=U12/R1
% 1 A
I2=U12/R2
% 1 A

I4-I3-I5
% 0

eq1=E*I4
% 27
eq2=R1*I1^2+R2*I2^2+R3*I3^2+R4*I4^2+R5*I5^2
% 27
