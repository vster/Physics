% Oper_x dirac(x-x1)=x1*dirac(x-x1)
% Oper_x f(x) = x*f(x)

syms x x1 f(x)
d1=OperX(dirac(x-x1))
% x*dirac(x - x1)
d2=OperX(f)
% x*f(x)

function X=OperX(phi)
syms x
X=x*phi;
end