% m0*re=M*rc
% ve/re=vc/rc=w
clear
syms m0 ve re M vc rc w
L=m0*ve*re+M*vc*rc
L=subs(L,[ve vc],[w*re w*rc])

syms e eps0 hp n
eq1=m0*w^2*re==e^2/(4*pi*eps0*(re+rc)^2)
eq2=m0*w*re^2+M*w*rc^2==n*hp

% Put r=re+rc=re*(1+m0/M) and 
% mu=m0*M/(m0+M) 
% then
syms mu r
eq1=mu*w^2*r==e^2/(4*pi*eps0*r^2)
eq2=mu*w*r^2==n*hp

[rn wn]=solve([eq1 eq2],[r w])
% rn=(4*pi*eps0*hp^2*n^2)/(e^2*mu)
% wn=(e^4*mu)/(16*eps0^2*hp^3*n^3*pi^2)

E=m0*ve^2/2+M*vc^2/2-e^2/(4*pi*eps0*(re+rc))
E=mu*w^2*r^2/2-e^2/(4*pi*eps0*r)

En=subs(E,[r w],[rn wn])
% -(e^4*mu)/(32*eps0^2*hp^2*n^2*pi^2)
syms k pi
Ek=-(e^4*mu)/(32*eps0^2*hp^2*k^2*pi^2)

wnk=simplify((Ek-En)/hp)
% (e^4*mu*(k^2 - n^2))/(32*eps0^2*hp^3*k^2*n^2*pi^2)
syms R1
wnk=R1*(1/n^2-1/k^2)
% where
R1=(e^4*mu)/(32*eps0^2*hp^3*pi^2)

digits(4)
mu1=m0*M/(m0+M)
mu2=vpa(subs(mu1,[m0 M],[9.109e-31 1.673e-27]))
% 9.104e-31 kg
R2=vpa(subs(R1,[e mu eps0 hp],[1.6e-19 9.104e-31 8.854e-12 1.055e-34]))
% 2.052e16 1/s - modified Rydberg constant