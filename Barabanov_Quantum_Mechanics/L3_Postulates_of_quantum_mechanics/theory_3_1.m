clear
syms q dq p p1 real
syms Phi(q) Psi(q)
syms psi
syms OperF(psi) OperG(psi)
syms OperP(psi) OperX(psi)

% Integral
% int()Phi(q)'*Psi(q)dq = <Phi|Psi>=<Psi|Phi>'
% called projection Psi on Phi

% If <Phi|Psi>=0 then say, 
% that Phi and Psi are orthogonal

% <Psi|Psi>=1                 - normalization condition per unit
% <Psi_p1|Psi_p>=dirac(p-p1)  - normalization condition per delta-function
% <Psi_p|Psi>=C(p)            - pulse amplitude probability
% <p>=<Psi|OperP(Psi)>        - average momentum
% <x>=<Psi|OperX(Psi)>        - average coordinate

int(Psi'*Psi,q)
% int(conj(Psi(q))*Psi(q), q) = 1
int(Psi(p1)'*Psi(p))
% int(conj(Psi(p1))*Psi(p), p) = dirac(p-p1)
int(Psi(p)'*Psi)
% int(conj(Psi(p))*Psi(q), q) = C(p)
pm=int(Psi'*OperP(Psi),q)
% int(OperX(Psi(q))*conj(Psi(q)), q)
xm=int(Psi'*OperX(Psi),q)
% int(OperX(Psi(q))*conj(Psi(q)), q)

% <Phi|OperF(Psi)>=int()Phi(q)'*(OperF(Psi(q))dq
% <OperG(Phi)|Psi>=int()(OperG(Phi(q))'*Psi(q)dq
int(Phi'*OperF(Psi),q)
% int(OperF(Psi(q))*conj(Phi(q)), q)
int(OperG(Phi)'*Psi,q)
% int(conj(OperG(Phi(q)))*Psi(q), q)

% OperF_p - Hermitian adjoint operator for OperF, if
% <Phi|OperF(Psi)>=<OperF_p(Phi)|Psi>

% If OperF_p=OperF, then 
% OperF - self-adjoint or Hermitian operator

% If OperF is Hermitian operator, then
% <Psi|OperF(Psi)>=<OperF_p(Psi)|Psi>=<Psi|OperF_p(Psi)>=<Psi|OperF(Psi)>'

% OperF is called linear if
% OperF(c1*Psi1+c2*Psi2)=c1*OperF(Psi1)+c2*OperF(Psi2)
syms c1 c2
syms Psi1(psi) Psi2(psi)
eq1=OperF(c1*Psi1(psi)+c2*Psi2(psi))
eq2=c1*OperF(Psi1)+c2*OperF(Psi2)
% If eq1=eq2 then OperF called linear

