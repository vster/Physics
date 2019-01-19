% U0 E>U0 a
% R=1-D
% R max if D min
clear
syms E U0 k2 a real
D=(1+(U0^2*sin(k2*a)^2)/(4*E*(E-U0)))^(-1)            % (4.74)
% k2=sqrt(2*m0*E/hp^2)
% D min, if sin(k2*a)=1
% k2*a=(2*m+1)*1/2
syms m0 hp m a real
eq1=sqrt(2*m0*E/hp^2)*a==(2*m+1)*1/2
a=simplify(solve(eq1,a))
% (2^(1/2)*abs(hp)*(m + 1/2))/(2*(E*m0)^(1/2))
syms lamB
a=(2*m+1)/4*lamB
% where lamB=2*pi*hp/sqrt(2*m0*E)