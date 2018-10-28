% NEUTRINO OSCILLATIONS
% https://math.hse.ru/data/2016/02/03/1137670870/Lect1.pdf
% ket_nu1, ket_nu2
% exp(-i*E(k)*t)*ket_nu(k)
% where E(k)=m(k)*c^2
% E(k)=sqrt(p^2*c^2+m(k)^2*c^4)

syms ket_nu1 ket_nu2 teta
ket_nu_e=cos(teta)*ket_nu1+sin(teta)*ket_nu2
ket_nu_mu=-sin(teta)*ket_nu1+cos(teta)*ket_nu2

Ket_nu_mu=[-sin(teta);cos(teta)]
syms E1 E2 t teta real
Ket_nu(t)=[-sin(teta)*exp(-i*E1*t);cos(teta)*exp(-i*E2*t)]
% -exp(-E1*t*1i)*sin(teta)
%  exp(-E2*t*1i)*cos(teta)
Bra_nu_mu=Ket_nu_mu'
% [ -sin(conj(teta)), cos(conj(teta))]
P_mu=(Bra_nu_mu*Ket_nu(t))^2
% (exp(-E2*t*1i)*cos(teta)^2 + exp(-E1*t*1i)*sin(teta)^2)^2