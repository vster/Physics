% Superposition of stationary states.

% OperH(psi(x))=E*psi(x)                            (2.6)
% This is stationary Schredinger equation

% The general solution of the equation 
% is a superposition of stationary states
% psi1, psi2, psi3... 
% each associated with levels energy
% E1, E2, E3...
% OperH psi(ksi)=sum(n)c(n)*psi(ksi,n)

% The complete Schredinger equation for stationary states (2.4) 
% has a solution in the form of a linear combination 
% of stationary states
% Psi(ksi,t)=sum(n)c(n)*psi(ksi,n)*exp(-i*E(n)*t/hp)     (2.11)
% where
% c(n)=int psi(n)'*exp(-i*E(n)*(t-t0)/hp)*Psi(ksi,t0,n)*d_ksi

clear
syms x dx t hp E1 E2 real
syms c1 c2
syms psi1(x) psi2(x)
Psi(x,t)=c1*psi1(x)*exp(-i*E1*t/hp)+c2*psi2(x)*exp(-i*E2*t/hp)

% Use 
% <A>=int Psi'*OperA(Psi)*dx              (1.8)

% Em=int(psi'*OperH(psi),x)
E1=int(psi1'*OperH(psi1),x)
% int(conj(psi1(x))*(U(x)*psi1(x) - (hp^2*diff(psi1(x), x, x))/(2*m)), x)
E2=int(psi2'*OperH(psi2),x)
% int(conj(psi2(x))*(U(x)*psi2(x) - (hp^2*diff(psi2(x), x, x))/(2*m)), x)

Ec1=int((c1*psi1)'*OperH(c1*psi1),x)
% int(conj(psi1(x))*conj(c1)*(c1*U(x)*psi1(x) - (c1*hp^2*diff(psi1(x), x, x))/(2*m)), x)
% abs(c1)^2*E1
Ec2=int((c2*psi2)'*OperH(c2*psi2),x)
% int(conj(psi2(x))*conj(c2)*(c2*U(x)*psi2(x) - (c2*hp^2*diff(psi2(x), x, x))/(2*m)), x)
% abs(c2)^2*E2

psi(x)=c1*psi1(x)+c2*psi2(x)
eq1=expand(psi'*OperH(psi))
Em=int(eq1,x)
% int(c1*conj(psi1(x))*conj(c1)*U(x)*psi1(x) + c1*conj(psi2(x))*conj(c2)*U(x)*psi1(x) + c2*conj(psi1(x))*conj(c1)*U(x)*psi2(x) + c2*conj(psi2(x))*conj(c2)*U(x)*psi2(x) - (c1*hp^2*conj(psi1(x))*conj(c1)*diff(psi1(x), x, x))/(2*m) - (c1*hp^2*conj(psi2(x))*conj(c2)*diff(psi1(x), x, x))/(2*m) - (c2*hp^2*conj(psi1(x))*conj(c1)*diff(psi2(x), x, x))/(2*m) - (c2*hp^2*conj(psi2(x))*conj(c2)*diff(psi2(x), x, x))/(2*m), x)
syms U(x) m hp
Em= int(c1*conj(psi1(x))*conj(c1)*U(x)*psi1(x) + c2*conj(psi2(x))*conj(c2)*U(x)*psi2(x) - (c1*hp^2*conj(psi1(x))*conj(c1)*diff(psi1(x), x, x))/(2*m) - (c2*hp^2*conj(psi2(x))*conj(c2)*diff(psi2(x), x, x))/(2*m), x)
syms E1 E2
Em = abs(c1)^2*E1+abs(c2)^2*E2

d=expand(Em-(Ec1+Ec2))
% 0    

E2m=int(psi'*OperH2(psi),x)
%...
E2m =  abs(c1)^2*E1^2+abs(c2)^2*E2^2

sigE2=expand(E2m-Em^2)
% E1^2*abs(c1)^2 - E1^2*abs(c1)^4 + E2^2*abs(c2)^2 - E2^2*abs(c2)^4 - 2*E1*E2*abs(c1)^2*abs(c2)^2
% E1^2*abs(c1)^2*abs(c2)^2+E2^2*abs(c2)^2*abs(c1)^2-2*E1*E2*abs(c1)^2*abs(c2)^2
sigE2=abs(c1)^2*abs(c2)^2*(E1-E2)^2

Psi2=Psi'*Psi
Psi2=simplify(expand(Psi2))
% abs(psi1(x))^2*abs(c1)^2 + abs(psi2(x))^2*abs(c2)^2 + c2*conj(psi1(x))*exp((t*(E1*1i - E2*1i))/hp)*conj(c1)*psi2(x) + c1*conj(psi2(x))*exp(-(t*(E1*1i - E2*1i))/hp)*conj(c2)*psi1(x)
% abs(c1)^2*psi1^2+abs(c2)^2*psi2^2+2*c1*c2*psi1*psi2*cos((E2-E1)*t/hp)
Psi2=abs(c1)^2*psi1^2+abs(c2)^2*psi2^2+2*c1*c2*psi1*psi2*cos((E2-E1)*t/hp)
% Now we see that the probability density oscillates sinusoidally with a frequency
% w=(E2-E1)/hp

% The total value of the energy of the system can be found 
% by the formula of the average value for the discrete spectrum
% <H>=sum(n=1:inf)abs(c(n))^2*E(n)

% but can be found from the formula for the continuous spectrum, 
% they are equivalent:
% <H>=int()Psi'*OperH(Psi)*d_ksi=
%  = int()(sum()c(m)psi(m))'*OperH(sum()c(n)*psi(n))*d_ksi=
%  = sum()sum()c(m)'*c(n)*E(n)*int()psi'*psi*s_ksi
%  = sum()abs(c(n))^2*E(n)


function H=OperH(psi)
syms x hp m real
syms U(x)
H=-hp^2/(2*m)*diff(psi,x,2)+U*psi;
end

function H2=OperH2(psi)
H2=OperH(OperH(psi));
end

