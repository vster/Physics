% Nabla^2(phi_n(x))+(2*m/hp^2)*(E-U)phi_n(x)=0            (2.8)

syms x m hp U E real
syms psi(x)
eqn=diff(psi,x,2)+(2*m/hp^2)*(E-U)*psi
syms A k
psi1=A*exp(i*k*x)
eqn=subs(eqn,psi,psi1)
% - A*k^2*exp(k*x*1i) + (2*A*m*exp(k*x*1i)*(E - U))/hp^2=0
E1=simplify(solve(eqn==0,E))
% (hp^2*k^2 + 2*U*m)/(2*m) > U
