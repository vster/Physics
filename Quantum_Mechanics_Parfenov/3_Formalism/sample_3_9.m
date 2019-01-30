clear
syms L x

% B=2/L*{sin(pi*x/L),sin(2*pi*x/L),sin(3*pi*x/L),...}
n=4
for j=1:n
    B(j)=2/L*sin(j*pi*x/L)
end

% H=sum(n:inf)En*|n><n|
syms E1
I=eye(n)
for j=1:n
    H(j,j)=E1*j^2*I(j,j)
end


