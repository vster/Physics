clear
ket_alfa=[2+1i;2+2i]
ket_beta=[1+1i;1+2i]

bra_alfa=ket_alfa'
bra_beta=ket_beta'

p1=bra_alfa*ket_beta
% 9.000000000000000 + 3.000000000000000i
p2=(bra_beta*ket_alfa)'
% 9.000000000000000 + 3.000000000000000i