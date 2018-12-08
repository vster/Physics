syms Q C1 C2 C3
V1=Q/C1
V2=Q/C2
V3=Q/C3
V=V1+V2+V3
C=simplify(Q/V)
% (C1*C2*C3)/(C1*C2 + C1*C3 + C2*C3)