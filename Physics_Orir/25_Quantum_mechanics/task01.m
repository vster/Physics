syms k x w t real
psi=exp(1i*(k*x-w*t))+exp(1i*(k*x+w*t))

psi_psi=simplify(psi'*psi)
% exp(-t*w*2i)*(exp(t*w*2i) + 1)^2