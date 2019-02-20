clear
format short
syms ket1 ket2
state0=1/sqrt(2)*(ket1+ket2)
state1=1/sqrt(2)*(ket1-ket2)

syms av ah
ketL0=1/sqrt(2)*[av  av 0;0 0 0]
% [ (2^(1/2)*av)/2, (2^(1/2)*av)/2, 0]
% [              0,              0, 0]
ketL1=1/sqrt(2)*[av -av 0;0 0 0]
% [ (2^(1/2)*av)/2, -(2^(1/2)*av)/2, 0]
% [              0,               0, 0]
ketR0=1/sqrt(2)*[0  av av;0 0 0]
% [ 0, (2^(1/2)*av)/2, (2^(1/2)*av)/2]
% [ 0,              0,              0]
ketR1=1/sqrt(2)*[0 av -av;0 0 0]
% [ 0, (2^(1/2)*av)/2, -(2^(1/2)*av)/2]
% [ 0,              0,               0]

ketV=[av;0] 
ketH=[0;ah]
ket_vac=[0;0]

ketL0=1/sqrt(2)*[ketV, ketV,ket_vac]
% [ (2^(1/2)*av)/2, (2^(1/2)*av)/2, 0]
% [              0,              0, 0]
ketL1=1/sqrt(2)*[ketV,-ketV,ket_vac]
% [ (2^(1/2)*av)/2, -(2^(1/2)*av)/2, 0]
% [              0,               0, 0]
ketR0=1/sqrt(2)*[ket_vac,ketV, ketV]
% [ 0, (2^(1/2)*av)/2, (2^(1/2)*av)/2]
% [ 0,              0,              0]
ketR1=1/sqrt(2)*[ket_vac,ketV,-ketV]
% [ 0, (2^(1/2)*av)/2, -(2^(1/2)*av)/2]
% [ 0,              0,               0]

syms alfa beta
ket_psi_in_L_p=1/sqrt(2)*[(alfa*ketV+beta*ketH),+(alfa*ketV+beta*ketH),ket_vac]
% [ (2^(1/2)*alfa*av)/2, (2^(1/2)*alfa*av)/2, 0]
% [ (2^(1/2)*ah*beta)/2, (2^(1/2)*ah*beta)/2, 0]
ket_psi_in_L_m=1/sqrt(2)*[(alfa*ketV+beta*ketH),-(alfa*ketV+beta*ketH),ket_vac]
% [ (2^(1/2)*alfa*av)/2, -(2^(1/2)*alfa*av)/2, 0]
% [ (2^(1/2)*ah*beta)/2, -(2^(1/2)*ah*beta)/2, 0]
ket_psi_in_R_p=1/sqrt(2)*[ket_vac,(alfa*ketV+beta*ketH),+(alfa*ketV+beta*ketH)]
% [ 0, (2^(1/2)*alfa*av)/2, (2^(1/2)*alfa*av)/2]
% [ 0, (2^(1/2)*ah*beta)/2, (2^(1/2)*ah*beta)/2]
ket_psi_in_L_m=1/sqrt(2)*[ket_vac,(alfa*ketV+beta*ketH),-(alfa*ketV+beta*ketH)]
% [ 0, (2^(1/2)*alfa*av)/2, -(2^(1/2)*alfa*av)/2]
% [ 0, (2^(1/2)*ah*beta)/2, -(2^(1/2)*ah*beta)/2]


OpUf=1/sqrt(2)*[1 1;-1 1]
OpUb=OpUf'
OpA1=[av;ah]
OpA2=[av;ah]

syms t r
SU=[t r;-r' t']
FM=[0 -1;-1 0]

syms teta teta1 teta2 delta
OpRot(teta)=[cos(teta) sin(teta);-sin(teta) cos(teta)]
OpTL=[exp(i*delta) 0;0 exp(-i*delta)]
OpSU=OpRot(teta1)*OpTL*OpRot(teta2)
OpSU=simplify(OpSU)