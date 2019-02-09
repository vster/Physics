% Wave function of a system of interacting particles

% OpH=OpH1+OpH2
% OpHi=(-hp^2/(2*m0))*(d2/dxi2+d2/dyi2+d2/dzi2)+U(xi,yi,zi), i=1,2

% OpH_Psi=(OpH1+OpH2)Psi=E*Psi               (6.8)
% Psi(q1,q2)=Psi_alfa(q1)*Psi_beta(q2)       (6.9)

% Subs (6.9) to (6.8) we get
% OpH_Psi_alfa(q1)Psi_beta(q2) = 
%     =(OpH1_Psi_alfa(q1))Psi_beta(q2)+(OpH2_Psi_beta(q2))Psi_alfa(q1) = 
%     = E*Psi_alfa(q1)*Psi_beta(q2)

% OpH1_Psi_alfa(q1)/Psi_alfa(q1)+OpH2_Psi_beta(q2)/Psi_beta(q2)=E   (6.10)

% OpH1_Psi_alfa(q1)/Psi_alfa(q1)=E1
% OpH2_Psi_beta(q2)/Psi_beta(q2)=E2
% or
% OpH1_Psi_alfa(q1)=E1*Psi_alfa(q1)
% OpH2_Psi_beta(q2)=E2*Psi_beta(q2)                  (6.11)
% where E1+E2=E

% psi_alfa(q1) and psi_beta(q2) - decisions of (6.11)
% then
% Psi(q1,q2)=psi_alfa(q1)*psi_beta(q2)               (6.12)
% 
% We use the principle of identity of particles, then
% Psi(q2,q1)=psi_alfa(q2)*psi_beta(q1)               (6.13)

% Solutions (6.12) and (6.13) do not satisfy the principle 
% of symmetry or asymmetry of wave functions!

% But one can form symmetric 
% PsiS=psi_alfa(q1)*psi_beta(q2)+psi_alfa(q2)*psi_beta(q1)
% and asymmetric 
% PsiA=psi_alfa(q1)*psi_beta(q2)-psi_alfa(q2)*psi_beta(q1)
% wave functions.

% For N particles
% Psi(q1,q2...qi...qN)=psi_alfa(q1)...psi_tau(qi)...psi_omega(qN)

% For bosons
% PsiS=sum(i,j=1:N)OpPij_psi_alfa(q1)...psi_tau(qi)...psi_omega(qN)  (6.17)

% For fermions
% PsiA(q1...qN)=|psi_alfa(q1).....psi_alfa(qN)|
%               |psi_beta(q1).....psi_beta(qN)|
%               |.........  .....  .......... |          (6.18)
%               |psi_omega(q1)...psi_omega(qN)|

% Pauli principle
% In the system of identical fermions there cannot 
% be two particles that are in the same quantum state.
% 
