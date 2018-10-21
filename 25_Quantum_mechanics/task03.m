syms k0 dk x real
psi=exp(i*(k0+dk)*x)+exp(i*(k0-dk)*x)

psi_psi=expand(psi'*psi)
% exp(-dk*x*2i) + exp(dk*x*2i) + 2
% 2*cos(2*dk*x)+2