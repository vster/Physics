syms x
f=x^3-5
y=OperA3(f)
% 3*x^3 + 3*x^2 - 15

function A3=OperA3(X)
A3=diff(X)+3*X;
end
