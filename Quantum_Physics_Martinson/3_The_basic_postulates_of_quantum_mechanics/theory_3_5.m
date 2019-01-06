% Own functions and eigenvalues of operators

% OpPhi(Psi)=f*Psi(V)                   (3.43)
% OpPhi(Psi(n))=f(n)*Psi(n), n=1,2,3...          (3.44)
% OpPhi(Psi)=f*Psi(V)                            (3.45)
% OpPhi(Psi)'=conj(Psi(V))*conj(f)                (3.46)
% int(RN)Psi'*(OpPhi(Psi))dV=int(RN)Psi(OpPhi(Psi))'dV        (3.47)
% f*int(RN)Psi'*Psi*dV=f'*int(RN)Psi*Psi'*dV             (3.48)
% f=f' => f is real number

% OpPhi(Psi(n))=f(n)*Psi(n)                (3.49)
% OpPhi(Psi(m))=f(m)*Psi(m)
% int(RN)Psi(n)'*(OpPhi(Psi(m))*dV=int(RN)Psi(m)(OpPhi(Psi(n))'*dV  (3.50)
% With use (3.49)
% f(m)*int(RN)Psi(n)'*Psi(m)dV=f(n)'*int(RN)Psi(m)*Psi(n)'*dV     (3.51)
% f(n)=f(n)'
% (f(m)-f(n))*int(RN)Psi(n)'*Psi(m)*dV=0         (3.52)
% int(RN)Psi(n)'*Psi(m)*dV=0, n~=m             (3.53)
% int(RN)Psi(n)'*Psi(m)*dV=kroneckerDelta(m,n)      (3.54)

% Psi=sum(n)C(n)*Psi(n)                     (3.55)
% int(RN)Psi(m)'*Psi*dV=sum(n)C(n)*int(RN)Psi(m)'*Psi(n)=
%     =sum(n)C(n)kroneckerDelta(m,n)=C(m)          (3.56)
% C(n)=int(RN)Psi(n)'*Psi*dV            (3.57)
% Psi=int(F)Cf*Psif*df                (3.58)
% Cf=int(RN)Psif'*Psi*dV              (3.59)

% Eigenvalue spectra of quantum-mechanical operators

% 1)
syms x Psi(x)
OperX(Psi)
% OperX(Psi)=x*Psi(x)                (3.60)

% 2)
syms hp px
eq1=i*hp*diff(Psi,x)+px*Psi                % (3.61)
PsiSol=dsolve(eq1)
% Psi=C*exp((px*x*1i)/hp)                 (3.62)

% 3)
syms phi Psi(phi) hp Lz
eq2=i*hp*diff(Psi,phi)+Lz*Psi             % (3.63)
PsiSol=dsolve(eq2)
% Psi=               (3.64)
% Psi(phi+2*pi)=Psi(phi)
% exp(i*Lz*(phi+2*pi)/hp)=exp(i*Lz*phi/hp)
% or
% exp(i*Lz*2*pi/hp)=1
% Lz*2*pi/hp=2*pi*m, m=0,+-1,+-2,...
% Found discrete spectrum of operator eigenvalues OperLz
% Lz=m*hp,  m=0,+-1,+-2,...                 (3.65)
% Psim(phi)=1/sqrt(2*pi)*exp(i*m*phi)           (3.66)
syms C m
Psim=C*exp(1i*m*phi)
I=int(Psim'*Psim,phi,0,2*pi)
% 2*pi*abs(C)^2=1 => C=1/sqrt(2*pi)

% 4)
% OperL2(Psi)=L^2*Psi   
% -hp^2*(1/sin(teta)*diff(sin(teta)*diff(psi,teta),teta)+...
%     1/sin(teta)^2*diff(psi,phi,2)) ==L^2*Psi       (3.67)
% L2=hp^2*l*(l+1), l=0,1,2,...                   (3.68)
% Psilm=Ylm(teta,phi)                 (3.69)



