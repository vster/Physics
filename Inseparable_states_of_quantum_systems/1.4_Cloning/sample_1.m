CNOT=[1 0 0 0;...
      0 1 0 0;...
      0 0 0 1;...
      0 0 1 0]

syms x1 x2
ket_x=[x1;x2]
ket_0=[0;1]
K1=kron(ket_x,ket0)

ket_x_2=kron(ket_x,ket_x)
%  x1^2
% x1*x2
% x1*x2
%  x2^2

ket_x_3=CNOT*ket_x_2
%  x1^2
% x1*x2
%  x2^2
% x1*x2
