syms x
Psi=cos(3*x)

Psi2=OperD2x(Psi)
% -9*cos(3*x) = -9*Psi
% a=-9

% Diff2 Operator
function D2x=OperD2x(psi)
syms x real
D2x=diff(psi,x,2);
end