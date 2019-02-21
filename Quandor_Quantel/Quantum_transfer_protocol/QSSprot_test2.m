clear
format short
syms ket1 ket2
state0=1/sqrt(2)*(ket1+ket2)
state1=1/sqrt(2)*(ket1-ket2)

syms av ah real
assume(av>0)
assume(ah>0)
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
assume(alfa>0)
assume(beta>0)
ket_psi_in_L_p=1/sqrt(2)*[(alfa*ketV+beta*ketH),+(alfa*ketV+beta*ketH),ket_vac]
% [ (2^(1/2)*alfa*av)/2, (2^(1/2)*alfa*av)/2, 0]
% [ (2^(1/2)*ah*beta)/2, (2^(1/2)*ah*beta)/2, 0]
ket_psi_in_L_m=1/sqrt(2)*[(alfa*ketV+beta*ketH),-(alfa*ketV+beta*ketH),ket_vac]
% [ (2^(1/2)*alfa*av)/2, -(2^(1/2)*alfa*av)/2, 0]
% [ (2^(1/2)*ah*beta)/2, -(2^(1/2)*ah*beta)/2, 0]
ket_psi_in_R_p=1/sqrt(2)*[ket_vac,(alfa*ketV+beta*ketH),+(alfa*ketV+beta*ketH)]
% [ 0, (2^(1/2)*alfa*av)/2, (2^(1/2)*alfa*av)/2]
% [ 0, (2^(1/2)*ah*beta)/2, (2^(1/2)*ah*beta)/2]
ket_psi_in_R_m=1/sqrt(2)*[ket_vac,(alfa*ketV+beta*ketH),-(alfa*ketV+beta*ketH)]
% [ 0, (2^(1/2)*alfa*av)/2, -(2^(1/2)*alfa*av)/2]
% [ 0, (2^(1/2)*ah*beta)/2, -(2^(1/2)*ah*beta)/2]


ket_psi_in=ketL0

ket_psi_1=1/2*[ket_psi_in,ket_vac]
ket_psi_2=1/2*[ket_vac,ket_psi_in]
ket_psi_out=ket_psi_1+ket_psi_2
(ket_psi_out(1,2)/av)^2+(ket_psi_out(2,2)/ah)^2
data=1-abs(ket_psi_out(1,2))/(av/sqrt(2))
