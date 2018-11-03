clear
syms x
pi1=1/sqrt(sym(pi))
Psi=[pi1/sqrt(2) pi1*sin(x) pi1*cos(x) pi1*sin(2*x) pi1*cos(2*x)]

for i=1:5
    for j=1:5
        I(i,j)=int(Psi(i)'*Psi(j),x,-pi,pi);
    end
end
disp(I)
%[ 1, 0, 0, 0, 0]
%[ 0, 1, 0, 0, 0]
%[ 0, 0, 1, 0, 0]
%[ 0, 0, 0, 1, 0]
%[ 0, 0, 0, 0, 1]