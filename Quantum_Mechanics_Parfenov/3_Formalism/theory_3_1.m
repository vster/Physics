% Hilbert space
n=3
alfa=sym ('alfa',[n,1])
ket_n=eye(n)

for i=1:n
    % ket_psi_n
    ket_n(:,i)
end

ket_psi=zeros(n,1)
for i=1:n
    ket_psi=ket_psi+alfa(i)*ket_n(:,i)
end

% int()|Psi|^2*d_ksi < inf                     (3.1)