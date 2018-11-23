% Switches
% [d/dx,x]f(x)=d(x*f(x))/dx-x*d_f(x)/dx

syms x f(x)
Sw=OperDx(OperX(f))-OperX(OperDx(f))
% f(x)

% Coordinate operator
function x=OperX(f)
syms x real
x=x*f;
end

% Dx Operator
function Dx=OperDx(f)
syms x real
Dx=diff(f,x);
end
