% B=exp(-beta*x^2/2)*{A1*H1(beta*x),A2*H2(beta*x),...}
clear
n=4
I=eye(n)
syms hp w0
for j=1:n
    H(j,j)=hp*w0*(1/2+j-1)*I(j,j)
end