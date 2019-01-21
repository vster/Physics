% Pauli matrix algebra
clear
format short

% Pauli Matrix
sigx=[0 1;1 0]
sigy=[0 -i;i 0]
sigz=[1 0;0 -1] 

sigma(:,:,1)=sigx
sigma(:,:,2)=sigy
sigma(:,:,3)=sigz

I=eye(2)

% sig(i)*sig(j)=kroneckerDelta(i,j)*I+i*sum(k)eps(i,j,k)*sig(k)    (1.1.38)

sigx*sigx  % =1                            % (1.1.40a)

sigx*sigy  % =i*sigz                       % (1.1.40b)
sigx*sigz  % =-i*sigy
sigz*sigy  % =-i*sigx

% sig(i)*sig(j)+sig(j)*sig(i)=0              (1.1.40c)
sigma(:,:,1)*sigma(:,:,2)+sigma(:,:,2)*sigma(:,:,1)           %(1.1.40c)

% tr sigma(i)=0                                (1.1.41)
for i=1:3
trace(sigma(:,:,i))
end

% tr(sigma(i)*sigma(j))=2*kroneckerDelta(i,j)         (1.1.42a)

syms i j
for i=sym(1:3)
    for j=sym(1:3)
        tr_sig(i,j)=trace(sigma(:,:,i)*sigma(:,:,j));
        kr_d(i,j)=kroneckerDelta(i,j);
    end
end
tr_sig
kr_d

% sig(i)*sig(j)*sig(m)=kroneckerDelta(i,j)*sig(m)+i*sum(k)eps(i,j,k)sig(k)*sig(m)
% trace(sig(i)*sig(j)*sig(m))=2*i*exp(i,j,m)              (1.1.42b)

% ro=a*I+sum(i)b(i)*sig(i)                   (1.1.43)



