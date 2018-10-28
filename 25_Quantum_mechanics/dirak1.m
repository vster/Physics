syms f1 f2
% https://math.hse.ru/data/2016/02/03/1137670870/Lect1.pdf
ket_f=[f1;f2]
bra_f=ket_f'

syms g1 g2
ket_g=[g1;g2]

bra_f*ket_g
% g1*conj(f1) + g2*conj(f2)

% Kubit
ket_0=[1;0]
ket_1=[0;1]
syms c1 c2
ket_psi=c1*ket_0+c2*ket_1
% c1
% c2
% where |c1|^2+|c2|^2=1

syms f1 f2 E1 E2 t
bra_f0=[f1;f2]
% f1
% f2
bra_f(t)=[f1*exp(-i*E1*t);f2*exp(-i*E2*t)]
% f1*exp(-E1*t*1i)
% f2*exp(-E2*t*1i)