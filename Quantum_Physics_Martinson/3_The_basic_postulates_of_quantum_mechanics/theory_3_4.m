% Representation of physical quantities by operators
syms x y z hp real
syms Psi(x,y,z)

% 1) Coordinate operator

OperX(Psi)
OperY(Psi)                      % (3.27)
OperZ(Psi)
% OperX(Psi)=x*Psi, OperY(Psi)=y*Psi, OperZ(Psi)=z*Psi
% OperX=x, OperY=y, OperZ=z       (3.28)

OperR(Psi)                      
% OperR=ex*OperX+ey*OperY+ez*OperZ   (3.29)  

% 2) Impulse operator
OperPx(Psi)
OperPy(Psi)                     % (3.30)
OperPz(Psi)
OperP(Psi)                      % (3.31)

OperP2(Psi)                     % (3.32)
-hp^2*laplacian(Psi)            % (3.33)

% 3) Momentum operator
OperLx(Psi)
OperLy(Psi)                     % (3.34)
OperLz(Psi)

OperL2(Psi)                     % (3.35)
% OperL2=OperLx*OperLx+OperLy*OperLy+OperLz*OperLz

OperL(Psi)

% 4. Energy operators
OperEk(Psi)                     % (3.37)
OperU(Psi)                      
% OperU(Psi)=U*Psi or OperU=U     (3.38)

OperH(Psi)                      
% OperH=-hp^2/(2*m0)*laplacian()+U(x,y,z)    (3.39)

% i*hp*dPsi/dt=OperH(Psi)                    (3.40)

% OperH=1/(2*m0)*(OperP-q*OperA)^2+q*OperPhi+OperU

syms OperPhi(Psi)
syms C1 C2 Psi1 Psi2
eq1=OperPhi(C1*Psi1+C2*Psi2)                     % (3.41)
eq2=C1*OperPhi(Psi1)+C2*OperPhi(Psi2)
% If eq1==eq2, then OperPhi is linear operator

% Self-adjoint operator
% int(RN)Psi1'*(OperPhi(Psi2))dV==int(RN)Phi2*(OperPhi(Psi1))'dV  (3.42)