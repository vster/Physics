% Matrix Pauli
digits(2)
sig1=[0 1;1 0]
sig2=[0 -i;i 0]
sig3=[1 0;0 -1]
sig0=[1 0;0 1]

% Basic ratios
% Hermiticity
sig1'
% =sig1
sig2'
% =sig2
sig3'
% =sig3

% Zero trace
trace(sig1)
% 0
trace(sig2)
% 0
trace(sig3)
% 0

I=sig1*sig1
I=sig2*sig2
I=sig3*sig3
% = sig0

d1=sig1*sig2-i*sig3
d2=sig3*sig1-i*sig2
d3=sig2*sig3-i*sig1

eig(sig1)
eig(sig2)
eig(sig3)