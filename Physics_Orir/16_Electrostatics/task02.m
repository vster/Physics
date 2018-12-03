% fe0=we0/(2*pi)=sqrt(e^2*ne/(pi*me))
% P*V=NT*k*T =>nt=N/V=P/(k*T)
% ne=1e-4*nt=1e-4*P/(k*T)
syms e me P k T
fe0=sqrt((e^2/(pi*me))*1e-4*P/(k*T))
% ((P*e^2)/(10000*T*k*me))^(1/2)/pi^(1/2)
fe0=subs(fe0,[P,e,T,k,me],[1e5*1e-3,1.6e-19,300,1.38e-23,9.1e-31])
digits(3)
fe0=vpa(fe0)
% 1.47e5 Hz = 147 kHz


