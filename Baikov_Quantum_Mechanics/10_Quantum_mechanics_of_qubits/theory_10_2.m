clear
ket0=[1;0]
ket1=[0;1]
bra0=ket0'
bra1=ket1'
syms a b
ket_psi=a*ket0+b*ket1
% a
% b
% <0|psi>
bra0*ket_psi
% a
bra1*ket_psi
% b
