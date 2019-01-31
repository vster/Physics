clear
format short
n=4
I=eye(n)
Opap=zeros(n,n);
for k=1:n-1
    Opap(:,k+1)=sqrt(k)*I(:,k);    
end
Opap

Opam=zeros(n,n);
for k=1:n-1
    Opam(:,k)=sqrt(k)*I(:,k+1);
end

% OpN=Opap*Opam
OpN=Opap*Opam
%    1.0000         0         0         0
%         0    2.0000         0         0
%         0         0    3.0000         0
%         0         0         0         0

% Correction of OpN
OpN=zeros(n,n)
for k=1:n
    OpN(:,k)=k*I(:,k);
end
OpN
%     1     0     0     0
%     0     2     0     0
%     0     0     3     0
%     0     0     0     4

% |1>
ket1=I(:,2)

% OpN|1>
OpN*ket1
% [0;2;0;0]
