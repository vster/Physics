clear
ket1=[1;0]
ket2=[0;1]

% H0|1>=hp*w1*|1>
% H0|2>=hp*w2*|2>
syms hp w1 w2 t
H0_ket1=hp*w1*ket1
H0_ket2=hp*w2*ket2
H0=hp*w1*ket1*ket1'+hp*w2*ket2*ket2'
% [ hp*w1,     0]
% [     0, hp*w2]

ket_Psi_0=[1;0]
ket_Psi(t)=ket1*exp(-i*w1*t)*ket1'*ket_Psi_0+...
           ket2*exp(-i*w2*t)*ket2'*ket_Psi_0
%        exp(-t*w1*1i)
%             0

% H=H0+W
syms W11 W12 W22
W=[W11 W12;W12' W22]
H=H0+W
% [ W11 + hp*w1,         W12]
% [   conj(W12), W22 + hp*w2]