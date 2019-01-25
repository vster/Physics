% Matrixies of  Operators

% OpQ*|Psin>=sum(m)Qmn*|Psim>
% where
% Qmn=int(D)Psim'*OpA*Psin*dksi=<Psim|OpQ|Psin>

n=3
OpQ=sym('Q',[n n])
ket_Psi=sym('ket_Psi',[1 n])
ket_alfa=sym('a',[n 1])

for j=1:n
    ket_Psi*OpQ(:,j)
end

% bm=sum(n)an*Qmn
OpQ=OpQ.'
ket_beta=OpQ*ket_alfa