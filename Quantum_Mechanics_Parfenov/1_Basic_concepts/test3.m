clear
syms a11 a12 a21 a22
syms b11 b12 b21 b22
A=[a11 a12;a21 a22]
B=[b11 b12;b21 b22]
K=kron(A,B)

clear
syms a1 a2 a3 a4
syms b1 b2 b3
A=[a1;a2;a3;a4]
B=[b1 b2 b3]
K=kron(A,B)
