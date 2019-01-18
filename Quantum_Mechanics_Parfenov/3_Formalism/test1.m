n=3
Q=sym('Q',[n n])
ket_Psi=sym('ket_Psi',[n 1])
Q=Q.'
ket_Q_Psi=Q*ket_Psi
% Q1_1*ket_Psi1 + Q2_1*ket_Psi2 + Q3_1*ket_Psi3
% Q1_2*ket_Psi1 + Q2_2*ket_Psi2 + Q3_2*ket_Psi3
% Q1_3*ket_Psi1 + Q2_3*ket_Psi2 + Q3_3*ket_Psi3

ket_alfa=sym('a',[n 1])
ket_beta=Q*a
% Q1_1*a1 + Q2_1*a2 + Q3_1*a3
% Q1_2*a1 + Q2_2*a2 + Q3_2*a3
% Q1_3*a1 + Q2_3*a2 + Q3_3*a3