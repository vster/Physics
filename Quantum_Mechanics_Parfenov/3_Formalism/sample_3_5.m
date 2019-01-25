clear
format short

% |0>
ket0=[1;0]
% |1>
ket1=[0;1]
% |+>
ket_plus=1/sqrt(2)*(ket0+ket1)
% |->
ket_minus=1/sqrt(2)*(ket0-ket1)

NOT=[0 1;1 0]
NOT*ket0 % =|1>
NOT*ket1 % =|0>

% Hadamar
H=1/sqrt(2)*[1 1;1 -1]
H*ket0 % =|+>
H*ket1 % =|->

H*H % =I

Z=[1 0;0 -1]
Z*ket_plus % =|->
Z*ket_minus % =|+>

X=[0 1;1 0]
Y=[0 -1i;1i 0]
Z=[1 0; 0 -1]

X*ket_plus
X*ket_minus

Y*ket_plus
Y*ket_minus

Z*ket_plus
Z*ket_minus