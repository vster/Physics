clear
n=3
I=eye(n)

for i=1:n
    e{i}=I(i,:)
end

Psi=sym('psi',[n,n])

for i=1:n
    PsiV{i}=Psi(:,i)
end