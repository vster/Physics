% Hamiltonian Matrices
n=3 
m=4
H=sym('H',[n m])
Psi=sym('Psi',[m 1])
OpH_Psi=H*Psi

% OpH*Psi(n)=sum(m)H(m,n)*Psi(m)
% Psi(n)=psi_n(ksi)*exp(i*En*t/hp)
% Hnm(t)=int()Psin'*OpH*Psim*dksi
%    =int()psin'*OpH*psim*dksi*exp(i*wnm*t)=Hnm*exp(i*wnm*t)
% where
% wnm=(En-Em)/hp - frequancy of transfer

% Matrix Hnm(t) is diagonal, because
% Hnm=int()psinm'*H*psim*dksi=Em*int()psin'*psim*dksi=Em*deltanm  (3.17)
% H=sum(n)En|n><n|=sum(n)hp*wn*|n><n|

