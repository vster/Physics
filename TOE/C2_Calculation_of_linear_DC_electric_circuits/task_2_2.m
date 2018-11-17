syms 
% a)
syms R1 R2 R3 R4
R12=R1+R2+R1*R2/R3
R23=R2+R3+R2*R3/R1
R13=R3+R1+R3*R1/R2
R134=R13*R4/(R13+R4)
Re=R12*(R134+R23)/(R12+R134+R23)
Re=simplify(Re)
% (R1*R2 + R1*R3 + R1*R4 + R2*R3 + R2*R4)/(R1 + R3 + R4)
pretty(Re)

% b)
R23=R1*R2/(R1+R2)
Re=R4*(R1+R23)/(R1+R23+R4)
Re=simplify(Re)
% (R1*R4*(R1 + 2*R2))/(2*R1*R2 + R1*R4 + R2*R4 + R1^2)
pretty(Re)