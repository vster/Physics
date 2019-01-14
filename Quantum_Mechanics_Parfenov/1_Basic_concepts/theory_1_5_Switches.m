% Switches
% [d/dx,x]f(x)=d(x*f(x))/dx-x*d_f(x)/dx

syms x f(x)
S1=OperDx(OperX(f))-OperX(OperDx(f))
% f(x)
S2=Sw(@OperDx,@OperX,f)
% f(x)

% Switch
function s=Sw(f1,f2,f)
s=f1(f2(f))-f2(f1(f));
end

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
