% Probability flux density vector

% P=int(V)|Psi|^2*dV

% Probability flow Pi through surface S
% Pi -> S
% dP/dt=Pi                           (3.12)
% Pi=-int_s(S)j*dS                   (3.13)
% Here dS=dSn
% From (3.12) and (3.13) we get
% dP/dt=-int_s(S)j*dS                (3.14)
% Using the Ostrogradsky theorem
% int_s(S)j*dS=int(V)div(j)*dV
% int(V)(d|Psi|^2/dt+div(j))*dV=0    (3.15)
% d|Psi|^2/dt+div(j)=0               (3.16)
% d|Psi|^2/dt=d/dt(Psi'*Psi)=Psi*dPsi'/dt+Psi'*dPsi/dt     (3.17)
% Schr?dinger equation
% i*hp*dPsi/dt=-hp^2/(2*m0)*Delta(Psi)+U*Psi           (3.18)
% For Psi'
% -i*hp*dPsi'/dt=-hp^2/(2*m0)*Delta(Psi')+U*Psi'       (3.19)
% (3.18)*Psi', (3.19)*Psi
% i*hp*(Psi'*dPsi/dt+Psi*dPsi'/dt)=
%     = hp^2/(2*m0)*(Psi*Delta(Psi')-Psi'*Delta(Psi))  (3.20)
% Subs (3.20) to (3.17)
% d|Psi|^2/dt=-i*hp/(2*m0)*(Psi*Delta(Psi')-Psi'*Delta(Psi))   (3.21)
% ...
% d|Psi|^2/dt+div(i*hp/(2*m0)*(Psi*grad(Psi')-Psi'*grad(Psi))=0  (3.22)
% j=(i*hp/(2*m0))*(Psi*grad(Psi')-Psi'*grad(Psi))        (3.23)
% j=(i*hp/(2*m0))*(Psi*Nabla(Psi')-Psi'*Nabla(Psi))      (3.24)

% If (3.16)*m0 then 
% with rom=m0*|Psi|^2 and jm=m0*j we get
% continuity equation
% d_rom/dt+div(jm)=0                       (3.25)

% Similarly if (3.16)*q then
% with roq=q*|Psi|^2 and jq=q*j we get
% charge conservation law
% d_roq/dt+div(jq)=0                       (3.26)
