syms k x w t real
ksi=exp(1i*(k*x-w*t))+exp(1i*(k*x+w*t))

ksi_ksi=simplify(ksi'*ksi)
% exp(-t*w*2i)*(exp(t*w*2i) + 1)^2