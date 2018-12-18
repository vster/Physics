% Momentum operator
function L=OperL(psi)
syms hp
syms x y z
R=[x y z];
P=-1i*hp*[diff(psi,x) diff(psi,y) diff(psi,z)];
L=cross(R,P);
end