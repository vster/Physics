% Pure spin states
clear
ket_p=[1;0]
ket_m=[0;1]                                % (1.1.1a)
bra_p=ket_p'
bra_m=ket_m'                               % (1.1.1b)

syms a1 a2
% |hi>
ket_hi=a1*ket_p+a2*ket_m                   % (1.1.2)
% <hi|
bra_hi=ket_hi'
% <hi|hi>
simplify(bra_hi*ket_hi)
% abs(a1)^2 + abs(a2)^2 = 1                % (1.1.3)