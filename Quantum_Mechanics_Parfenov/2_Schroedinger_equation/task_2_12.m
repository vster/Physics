clear
syms E U0 a m hp real
kn=sqrt(2*m*(E+U0))/hp
% T=(1+U0^2*sin(a*kn)^2/(4*E*(E-U0))
T=(1+U0^2/(4*E*(E-U0)))^(-1)
pretty(T)

R=U0^2*sin(a*kn)^2/(4*E*(E-U0))
% (U0^2*sin((2^(1/2)*a*(m*(E + U0))^(1/2))/hp)^2)/(4*E*(E - U0))

kn1=subs(kn,[m E U0 hp],[9.1e-31 0.2*1e6*1.6e-19 1.6e-19 1e-34])
kn1=vpa(kn1)

T1=subs(T,[E U0 a m hp],[0.2*1e6*1.6e-19 1.6e-19 0.5e-9 9.1e-31 1e-34])
T1=vpa(T1)

R1=1-T1
% 5.457e-12

R2=subs(R,[E U0 a m hp],[0.2*1e6*1.6e-19 1.6e-19 0.5e-9 9.1e-31 1e-34])
vpa(R2)