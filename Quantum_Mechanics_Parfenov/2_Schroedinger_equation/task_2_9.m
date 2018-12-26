% T=ja/jb
clear
syms x hp m E U0 real
syms a b c k kn
% ja -?
jc=k*hp*abs(c)^2/m
jb=k*hp*abs(b)^2/m

% j=(i*hp/(2*m))*(Psi*Nabla(Psi')-Psi'*Nabla(Psi))
psi2=a*exp(i*k*x)

ja=(i*hp/(2*m))*(psi2*diff(psi2',x)-psi2'*diff(psi2,x))
ja=simplify(ja)
% (hp*exp(-(x*(abs(k)^2*1i - k^2*1i))/k)*abs(a)^2*(k^2 + abs(k)^2))/(2*k*m)
ja=hp*abs(a)^2*k/m
% ja=abs(a)^2*va=abs(a)^2*pa/m=abs(a)^2*k*hp/m
ja=subs(ja,k,sqrt(2*m*E)/hp)
% (2^(1/2)*abs(a)^2*(E*m)^(1/2))/m

psi1=b*exp(i*kn*x)
jb=(i*hp/(2*m))*(psi1*diff(psi1',x)-psi1'*diff(psi1,x))
jb=simplify(jb)
% (hp*exp(-(x*(abs(kn)^2*1i - kn^2*1i))/kn)*abs(b)^2*(kn^2 + abs(kn)^2))/(2*kn*m)
jb=hp*abs(b)^2*kn/m
% jb=abs(b)^2*vb=abs(b)^2*pb/m=abs(b)^2*kn*hp/m
jb=subs(jb,kn,sqrt(2*m*(E+U0)/hp))
% (2^(1/2)*hp*abs(b)^2*((m*(E + U0))/hp)^(1/2))/m

T=simplify(ja/jb)
% T=sqrt(E/(E+U0))*abs(a)^2/abs(b)^2    -???
