% NB/NA=4

% PsiB^2=4*PsiA^2
% or
syms PsiA
PsiB=2*PsiA

Imax=(PsiA+PsiB)^2
% 9*PsiA^2
Imin=(PsiA-PsiB)^2
% PsiA^2

Imax/Imin
% 9

% I=IA*(5+4*cos(rB-rA))

