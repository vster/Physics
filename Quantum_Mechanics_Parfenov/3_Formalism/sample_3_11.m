clear
n=4
I=eye(n)
syms w t
for j=1:n
    ket_n(:,j)=I(:,j)
    Psi(:,j)=exp(-i*w*t*(1/2+j-1))*ket_n(:,j)
end