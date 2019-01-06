% Measurement of physical quantities in quantum systems

% The module of the orbital angular momentum of atoms
% L=hp*sqrt(l*(l+1)), l,0,1,2...
% The projection of angular momentum on the direction z 
% of the selected magnetic field
% Lz=m*hp,  m=0,+-1,+-2,...

% The average value of a physical quantity f
% <f>=sum(n)P(n)*f(n)                   (3.71)
% Psi=sum(n)C(n)*Psi(n)                 (3.72)
% C(n)=int(RN)Psi(n)'*Psi*dV            (3.73)
% <f>=sum(n)P(n)*f(n)=sum(n)|C(n)|^2*f(n)          (3.74)
% <f>=sum(n)C(n)*C(n)'*f(n)
% <f>=sum(n)C(n)*f(n)*int(RN)Psi(n)*Psi(n)'*dV
% <f>=sum(n)C(n)*int(RN)Psi'*f(n)*Psi(n)*dV
% f(n)*Psi(n)=OperPhi(Psi(n))
%...
% <f>=int(RN)Psi'*(OperPhi(Psi))*dV                (3.75)

% If Psi=Psi(n)
% <f>=int(RN)Psi(n)'*(OperPhi(Psi(n))*dV
% <f>=int(RN)Psi(n)'*f(n)*Psi(n)*dV
% <f>=f(n)*int((RN)Psi(n)'*Psi(n)*dV=f(n)
% <f>=f(n)