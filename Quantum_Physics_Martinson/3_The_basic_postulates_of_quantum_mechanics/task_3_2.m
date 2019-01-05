% Psi(x,0)=A*exp(-x^2/a^2+i*b*x)
% a) Re(Psi)-? b) |Psi|^2-?

syms x a b A real
Psi(x)=A*exp(-x^2/a^2+i*b*x)

% a)
Re_Psi=real(Psi)
% A*exp(-x^2/a^2)*cos(b*x)

% b)
Psi2=Psi'*Psi
Psi2=simplify(Psi2)
% A^2*exp(-(2*x^2)/a^2)