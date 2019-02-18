clear
ketn=eye(3)

A=sym('a',[1 3])
ket_psi=A(1)*ketn(:,1)+A(2)*ketn(:,2)+A(3)*ketn(:,3)

B=sym('b',[3 3])
ket_psi2=zeros(9,1)
for k=1:3
    for j=1:3
        ket_psi2=ket_psi2+B(k,j)*kron(ketn(:,k),ketn(:,j))
    end
end