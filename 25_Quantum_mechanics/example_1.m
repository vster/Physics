% Example 1
% ksi=int B(k)*exp(i*k*x) dk

clear
syms A k k0 a x real
ksi=A*int(exp(1i*k*x),k,k0-a,k0+a)
ksi=simplify(ksi)
% -(A*(exp(x*(a + k0)*1i) - exp(-x*(a - k0)*1i))*1i)/x
% -(A*(exp(1i*x*a)*exp(1i*k0*x)-exp(-1i*x*a)*exp(1i*k0*x))/x
ksi=2*A*(sin(a*x)/x)*exp(1i*k0*x)

ksi_2=simplify(ksi'*ksi)
% (4*A^2*sin(a*x)^2)/x^2

% a*delta_x=1.39
% a=delta_k=delta_p/hp => delta_x*delta_p=1.39*hp