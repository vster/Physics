clear
syms x
syms Psi1(x) Psi2(x)
Psi=1/2*Psi1+1/2*Psi2
I=int(Psi'*Psi,x)
I=expand(I)
% int((conj(Psi1(x))*Psi1(x))/4, x) + int((conj(Psi1(x))*Psi2(x))/4, x) + int((conj(Psi2(x))*Psi1(x))/4, x) + int((conj(Psi2(x))*Psi2(x))/4, x)
% =1/4                                =0                                  =0                                  =1/4  
digits(3)
I=1/4+0+0+1/4
% 1/2
Psi=1/sqrt(2)*(Psi1+Psi2)

% Now we will show how the expected values 
% of such a system depend on time.
syms x t hp E1 E2 real
syms psi1(x) psi2(x)
Psi1(x,t)=psi1(x)*exp(-i*E1*t/hp)
Psi2(x,t)=psi2(x)*exp(-i*E2*t/hp)
Psi=Psi1+Psi2
I=1/2*int(Psi'*OperA(Psi),x)
I=simplify(expand(I))
% (A*int(abs(psi1(x))^2, x))/2 + (A*int(abs(psi2(x))^2, x))/2 +
% =A1m/2                          =A2m/2
% + (A*exp((t*(E1*1i - E2*1i))/hp)*int(conj(psi1(x))*psi2(x), x))/2 + (A*exp(-(t*(E1*1i - E2*1i))/hp)*int(conj(psi2(x))*psi1(x), x))/2
%          =int()psi1'*A*psi2*dx*cos((E2-E1)*t/hp)

function A=OperA(psi)
syms A
A=A*psi
end