
clear
syms x0 x a0 real
syms pi
% E0=1/2*hp*w0
psi0(x)=1/sqrt(x0*sqrt(pi))*exp(-x^2/(2*x0^2))
% where x0=sqrt(hp/(m0*w0)), w0=sqrt(k/m0)
% With maximum deviation
% k*a^2/2=hp*w0/2, then
% a0=sqrt(hp*w0/k)=sqrt(hp/(w0*m0))=x0
Pkl=int(abs(psi0)^2,x,-a0,a0)
% erf(a0/(x0^2)^(1/2))=erf(1)
digits(2)
Pkl=vpa(erf(1)) % =0.84
P=1-Pkl % =0.16