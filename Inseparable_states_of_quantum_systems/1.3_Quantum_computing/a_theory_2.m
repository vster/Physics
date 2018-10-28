I2=[1 0;0 1]
X=[0 1;1 0]
K1=kron(X,I2)
K2=kron(I2,X)

CNOT=[1 0 0 0;...
      0 1 0 0;...
      0 0 0 1;...
      0 0 1 0]
  
syms a b c d
ket_psi=[a;b;c;d]
ket_psi_2=CNOT*ket_psi

