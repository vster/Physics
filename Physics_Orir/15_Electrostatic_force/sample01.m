% Fe=Fg
% k0*q1*q2/r^2=G*m1*m2/r^2
% (q1/m1)*(q2/m2)=G/k0
% q1/m1=sqrt(G/k0)
% q1=(Ne-Np)*e
% m1=Np*mp+Nn*mn+Ne*me
% mp=mn>>me, Np=Nn => m1=2*Np*mp
% q1/m1=(Ne-Np)*e/(2*Np*mp)=sqrt(G/k0)
% (Ne-Np)/Np=(2*mp/e)*sqrt(G/k0)
syms mp e G k0
kk=(2*mp/e)*sqrt(G/k0)
% 1.8*e-18