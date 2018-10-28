% Wave packets

% De Broglie ratio
% p=h/lam
% p=(h/(2*pi))*(2*pi/lam)=(h/(2*pi))*k
% hp=h/(2*pi)

% p=hp*k        (De Broglie ratio)      (25-1)

% wave function
% psi=A*exp(1i*(k0-w*t))
clear
syms A k0 w t real
psi=A*exp(1i*(k0-w*t))
psi_2=simplify(psi'*psi)
% A^2

% Euler's formula
% exp(i*phi)=cos(phi)+i*sin(phi)
Re_psi=real(psi)
% A*cos(k0 - t*w)
Im_psi=imag(psi)
% A*sin(k0 - t*w)

% Wave function at the moment t=0
% psi(x,0)=A*exp(-x^2/(4*sigma^2))*exp(i*k0*x)      (25-2)
syms A x sigma k0 real
psi=A*exp(-x^2/(4*sigma^2))*exp(i*k0*x)

Re_psi=real(psi)
% A*exp(-x^2/(4*sigma^2))*cos(k0*x)
Im_psi=imag(psi)
% A*exp(-x^2/(4*sigma^2))*sin(k0*x)
psi_2=simplify(psi'*psi)
% A^2*exp(-x^2/(2*sigma^2))

%re_psi_plot=exp(-x^2)*cos(x)
%fplot(re_psi_plot)

%psi_2_plot=exp(-x^2)
%fplot(psi_2_plot)

% psi=exp(-x^2/(4*sig^2))*exp(i*k0*x)=sum B(n)*exp(i*k(n)*x)

% psi=exp(-x^2/(4*sig^2))*exp(i*k0*x)= int B(k)*exp(i*k*x)*dk   (25-3)

syms sigx k k0 x pi real
I=sigx/sqrt(pi)*int(exp(-sigx^2*(k-k0)^2)*exp(1i*k*x),k)
I=simplify(I)
% ???

% exp(-x^2/(4*sigx^2))*exp(1i*k*x)=
%   =sigx/sqrt(pi)*int exp(-sigx^2*(k-k0)^2)*exp(i*k*x) dk    (25-4)

% Compare (25-3) and (25-4) then
% B(k)=(sigx/sqrt(pi))*exp(-sigx^2*(k-k0)^2)
% Change k to p/hp
% B(p)=(sigx/sqrt(pi))*exp(-(p-p0)^2/(hp/sigx)^2)


