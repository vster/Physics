% Radioactive nuclear decay

% Mm*c^2=Md*c^2+sum(i)m(i)*c^2+Ek                 (7.12)

% Mm > Md+sum(i)m(i)                              (7.13)

% Law of radioactive decay

% dN=-lam*N*dt                                    (7.14)
% N(t)=N0*exp(-lam*t)                             (7.15)
% N0-N(t)=N0*(1-exp(-lam*t)                       (7.16)
% A=lam*N=-dN/dt=lam*N0*exp(-lam*t)=A0*exp(-lam*t)    (7.17)
% A0=lam*N0 - The activity of the radioactive drug at time t = 0

% Specific activity
% a=A/m

% N0/2=N0*exp(-lam*T12)
% T12=log(2)/lam=0.693/lam                        (7.18)
clear
syms t lam N N0
N=N0*exp(-lam*t)

% Find the average lifetime of the core tau
tau=int(t*lam*N,t,0,inf)/N0
% -lam*(limit(exp(-t*lam)*(t*lam + 1), t, Inf)/lam^2 - 1/lam^2)
tau=simplify(tau)
% -(limit(exp(-lam*t)*(lam*t + 1), t, Inf) - 1)/lam
% 1/lam
tau=1/lam                                       % (7.19)
syms tau
T12=0.693*tau

% The law of complex radioactive decay
syms t lam1 lam2 N1(t) N2(t)
eq1=diff(N1,t)+lam1*N1                   % (7.20a)
eq2=diff(N2,t)-lam1*N1+lam2*N2           % (7.20b)

syms N10 N20
N1(t)=N10*exp(-lam1*t)                   % (7.21a)
N2(t)=N10*(lam1/(lam2-lam1))*exp(-lam1*t)+...
    (N20-N10*(lam1/(lam2-lam1)))*exp(-lam2*t)       % (7.21b)

% If N20=0
N2(t)=N10*(lam1/(lam2-lam1))*(exp(-lam1*t)-exp(-lam2*t))