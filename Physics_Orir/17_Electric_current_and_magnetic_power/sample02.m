% sigma is electrical conductivity
% j=sigma*E
% sigma(n,e,m,u)-?

% j*A=sigma*E*A, j*A=I => sigma=I/(A*E)
clear
syms I A E L e n m u
sigma=I/(A*E)
I1=(A*E*L*e^2*n)/(2*m*u) 
sigma=subs(sigma,I,I1)
% sigma=(L*e^2*n)/(2*m*u)=1/ro           (17-5)