% a(n,k+)=<n|a+|k>=k^(1/2)*<n|n-k>=k^(1/2)*delta(n,k-1)
% a(n,k-)=<n|a-|k>=(k+1)^(1/2)*<n|n+k>=(k+1)^(1/2)*delta(n,k+1)
clear
format short
n=4
I=eye(n)
Opap=zeros(n,n);
for k=1:n-1
    Opap(:,k+1)=sqrt(k)*I(:,k);    
end
Opap
%         0    1.0000         0         0
%         0         0    1.4142         0
%         0         0         0    1.7321
%         0         0         0         0

Opam=zeros(n,n);
for k=1:n-1
    Opam(:,k)=sqrt(k)*I(:,k+1);
end
Opam
%         0         0         0         0
%    1.0000         0         0         0
%         0    1.4142         0         0
%         0         0    1.7321         0

% |1>
ket1=I(:,2)

% a+|1>=
Opap*ket1
% = [1;0;0;0] = |0>

% a-|1>
Opam*ket1
% =[0;0;sqrt(2);0]=sqrt(2)*|2>
