% Matrices

% T|alfa>=|beta> -> Ta=b
n=3
T=sym('t',[n,n])
ket_alfa=sym('a',[n,1])
ket_beta=T*ket_alfa
ket_beta1=sym('b',[n,1])