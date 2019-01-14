% Switches
% [d/dx,x]f(x)=d(x*f(x))/dx-x*d_f(x)/dx

syms x f(x)
C1=OperDx(OperX(f))-OperX(OperDx(f))
% f(x)
C2=Commutator(@OperDx,@OperX,f)
% f(x)

% Commutator
function c=Commutator(f1,f2,f)
c=f1(f2(f))-f2(f1(f));
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
