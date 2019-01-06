% Matrix formulation of quantum mechanics

% phi=sum(n)C(n)*Psi(n)                  (3.85)
% where
% C(n)=int(RN)Psi(n)'*phi*dV             (3.86)
% From (3.85) and (3.86)
% OperPhi(Psi(m))=sum(n)Phi(n,m)Psi(n)   (3.87)
% where
% Phi(n,m)=int(RN)Psi(n)'*(OperPhi(Psi(m)))*dV     (3.88)

% The designation proposed by Dirac
% <n|OperPhi|m> or <n|f|m>              (3.89)

% <n|m>=<n|OperI|m>
% OperI - single operator for which OperI(Psi(m))=Psi(m)

% <n|m>=<Psi(n)|Psi(m)>=int(RN)Psi(n)'*Psi(m)*dV=
%   = delta(n,m)=kroneckerDelta(n,m)

% 1) OperC=OperA+OperB
% C=A+B
% C(n,m)=A(n,m)+B(n,m)

% 2) OperC=OperA*OperB
% C=A*B
% In general A*B~=B*A

% exp(Phi)=1+Phi+1/2*Phi^2...+1/n!*Phi^n+...

% Phi(n,m)=<n|OperPhi|m>=int(RN)Psi(n)'*OperPhi(Psi(m))*dV=
%   =f(m)*int(RN)Psi(m)'*Psi(m)*dV=f(m)*delta(n,m)

