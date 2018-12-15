syms Q r R1 R2
assume(R1>0)
EIII=k0*Q/r^2
VIII=-int(EIII,r)
% (Q*k0)/r
V1=-int(EIII,r,inf,R1)
% (Q*k0)/R1

EII=(Q*k0*(r^3 - R2^3))/(r^2*(R1^3 - R2^3))
VII=-int(EII,r)+V1
% (Q*k0)/R1 - (Q*k0*(2*R2^3 + r^3))/(2*r*(R1^3 - R2^3))
VI=-int(EII,r,R1,R2)+V1
% (Q*k0)/R1 + (Q*k0*(R1^2 + R1*R2 - 2*R2^2))/(2*R1*(R1^2 + R1*R2 + R2^2))
