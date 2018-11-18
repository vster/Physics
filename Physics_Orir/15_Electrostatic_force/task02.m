% Fe=Fg
% k0*q1*q2/r^2=G*m1*m2/r^2
% (q1/m1)*(q2/m2)=G/k0
% q1/m1=sqrt(G/k0)
% q1=(Ne-Np)*e
% m1=Np*mp+Nn*mn+Ne*me
% mp=mn>>me, Np=Nn => m1=Np*mp
% q1/m1=(Ne-Np)*e/(Np*mp)=sqrt(G/k0)
% (Ne-Np)/Np=(mp/e)*sqrt(G/k0)
syms mp e G k0
digits(4)
kk=(mp/e)*sqrt(G/k0)
kk=subs(kk,[mp e G k0],[1.67e-27 1.6e-19 6.67e-11 9e9])
kk=vpa(kk)
% 9e-19
% 1.8*e-18