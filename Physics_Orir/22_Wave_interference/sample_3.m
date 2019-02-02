% d = 2 m
% f = 1000 Hz
% D = 4 m

% First node observed when
% r2-r1=lam/2
% r2-r1=d*sin(teta) => sin(teta)=lam/(2*d)
clear
syms u f d D teta
lam=u/f
digits(3)
lam1=vpa(subs(lam,[u,f],[330 1000]))
% 0.33 m
teta=asin(lam/(2*d))
teta1=subs(teta,[lam d],[lam1 2])
% 0.0826
syms D teta
y=D*tan(teta)
y1=vpa(subs(y,[D,teta],[4 teta1]))
% 0.33 m