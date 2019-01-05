% Wave function

% w=dP/dV=|Psi|^2                      (3.1)
% |Psi|^2=Psi'*Psi
% dP=|Psi|^2*dV=Psi'*Psi*dV            (3.2)
syms Psi V dV
dP=Psi'*Psi*dV

% P=int()dP=int(V)w*dV
P=int(abs(Psi)^2,V)                
P=int(Psi'*Psi,V)                    % (3.3)

% Properties of the wave function
% int(V->inf)|Psi|^2*dV=1
% or
% int(R^N)Psi'*Psi*dV=1                (3.4)

% The principle of superposition of quantum states
syms Psi1 Psi2 C1 C2
Psi=C1*Psi1+C2*Psi2                   % (3.5)

% Psi=C1*Psi1+C2*Psi2+...+CN*PsiN = sum(n=1:N)C(n)*Psi(n)     (3.6)
% sum(n=1:N)|C(n)|^2=1
