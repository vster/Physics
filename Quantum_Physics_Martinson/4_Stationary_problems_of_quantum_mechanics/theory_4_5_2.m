clear
syms ksi Cn n real
syms pi
syms Hn(ksi) 
psin(ksi)=Cn*exp(-ksi^2)*Hn(ksi)

% Polynomial Chebyshev-Hermite
for n=0:7
H(ksi)=simplify((-1)^n*exp(ksi^2)*diff(exp(-ksi^2),ksi,n))
HV(n+1)=H(ksi)
end

% Recurrent
HVC(1)=HV(1)
HVC(2)=HV(2)
for n=3:5
    HVC(n)=simplify(2*ksi*HVC(n-1)-2*(n-2)*HVC(n-2))
end

% Wave functions are orthonormal, i.e.
% int(-inf:+inf)psi(x,n)'*psi(x,m)dx=kroneckerDelta(m,n)

syms x x0
% x0=sqrt(hp/(m0*w0))
for n=0:3
    Cn=1/sqrt(2^n*factorial(n)*x0*sqrt(pi))
    H(ksi)=simplify((-1)^n*exp(ksi^2)*diff(exp(-ksi^2),ksi,n))
    psin(ksi)=H(ksi)*exp(-ksi^2/2)
    psin(x)=simplify(subs(psin,ksi,x/x0))
    psin(x)=Cn*psin(x)
    pretty(psin(x))
    fplot(x,subs(psin,x0,1))
    hold on
    grid on
end
hold off