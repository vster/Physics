syms k0 dk x real
ksi=exp(i*(k0+dk)*x)+exp(i*(k0-dk)*x)

ksi_ksi=expand(ksi'*ksi)
% exp(-dk*x*2i) + exp(dk*x*2i) + 2
% 2*cos(2*dk*x)+2