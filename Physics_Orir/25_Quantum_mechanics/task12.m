syms k0 dk x w0 dw t real
psi=exp(1i*((k0+dk)*x-(w0+dw)*t))+exp(1i*((k0-dk)*x-(w0-dw)*t))
psi_2=expand(psi'*psi)
% exp(-dw*t*2i)*exp(dk*x*2i) + exp(dw*t*2i)*exp(-dk*x*2i) + 2
% exp(-dw*t*2i+dk*x*2i)+exp(dw*t*2i-dk*x*2i)+2
% exp(-2i*(dw*t-dk*x))+exp(2i*(dw*t-dk*x))+2
% 2*cos(2*(dw*t-dk*x))+2

eq1=exp(-2i*(dw*t-dk*x))+exp(2i*(dw*t-dk*x))+2
eq2=2*cos(2*(dw*t-dk*x))+2
d=simplify(eq2-eq1)