% sigma is electrical conductivity
% j=sigma*E
% sigma(n,e,m,u)-?

% j*A=sigma*E*A, j*A=I => sigma=I/(A*E)
clear
syms I A E L e n me u
sigma=I/(A*E)
I1=(A*E*L*e^2*n)/(2*me*u) 
sigma=subs(sigma,I,I1)
% sigma=(L*e^2*n)/(2*m*u)=1/ro           (17-5)
sigma=(L*e^2*n)/(2*me*u)

syms m C kg s
sigma_si=subs(sigma,[L e n me u],[m C 1/m^3 kg m/s])
% (C^2*s)/(2*kg*m^3)~(A^2*s^3)/(kg*m^3)~1/(Om*m)~S/m