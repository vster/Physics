% Example 1
% psi=int B(k)*exp(i*k*x) dk

clear
syms A k k0 a x real
psi=A*int(exp(1i*k*x),k,k0-a,k0+a)
psi=simplify(psi)
% -(A*(exp(x*(a + k0)*1i) - exp(-x*(a - k0)*1i))*1i)/x
% -(A*(exp(1i*x*a)*exp(1i*k0*x)-exp(-1i*x*a)*exp(1i*k0*x))/x
psi=2*A*(sin(a*x)/x)*exp(1i*k0*x)

psi_2=simplify(psi'*psi)
% (4*A^2*sin(a*x)^2)/x^2

% a*delta_x=1.39
% a=delta_k=delta_p/hp => delta_x*delta_p=1.39*hp