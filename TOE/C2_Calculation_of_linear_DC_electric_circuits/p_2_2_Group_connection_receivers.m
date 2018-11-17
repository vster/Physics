% Group connection receivers

% 1. Serial connection
% R=R1+R2+R3+...+Rn

% 2. Parallel connection
% I=I1+I2+I3
% G=G1+G2+G3+...+Gn
% Re=(R1*R2)/(R1+R2)

% 3. Mixed compound
syms R1 R2 R3 R4 R5 R6 R7
R234=(R2+R3)*R4/(R2+R3+R4)
R567=R5+R6*R7/(R6+R7)
Re=simplify(R1+R234*R567/(R234+R567))
pretty(Re)

% 4. Transformation of the resistance triangle into 
% an equivalent star resistance and vice versa
% R1=R12*R21/(R12+R23+R31)
% R2=R23*R12/(R12+R23+R31)
% R3=R31*R23/(R12+R23+R31)

% R12=R1+R2+R1*R2/R3
% R23=R2+R3+R2*R3/R1
% R31=R3+R1+R3*R1/R2
