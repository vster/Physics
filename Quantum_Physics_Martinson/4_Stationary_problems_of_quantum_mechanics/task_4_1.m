syms x y z t V real
syms psi(x,y,z) OperA
Psi(x,y,z,t)=psi(x,y,z)*exp(-(E*t*1i)/hp)

am=int(Psi'*OperA(Psi),x,y,z)

function A1=OperA(psi)
syms A
A1=A*psi;
end
