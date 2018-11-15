syms A x a lam real
assume(lam>0)
Psi=A*exp(-(lam*(x-a)^2))

I=simplify(int(Psi'*Psi,x,-inf,inf))
% (2^(1/2)*A^2*pi^(1/2))/(2*lam^(1/2))=1
% A^2=(2*lam/pi)^(1/2))

Ix=simplify(int(Psi'*x*Psi,x,-inf,inf))
% (2^(1/2)*A^2*a*pi^(1/2))/(2*lam^(1/2))
Ix=simplify(subs(Ix,A^2,(2*lam/pi)^(1/2)))
% a

Ix2=simplify(int(Psi'*x^2*Psi,x,-inf,inf))
% (2^(1/2)*A^2*pi^(1/2)*(4*lam*a^2 + 1))/(8*lam^(3/2))
Ix2=simplify(subs(Ix2,A^2,(2*lam/pi)^(1/2)))
% (4*lam*a^2 + 1)/(4*lam)

sigx2=simplify(Ix2-Ix^2)
% 1/(4*lam)