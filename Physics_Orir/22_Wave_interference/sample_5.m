% n=13400 lines/inch
% lam=5893 A
clear
syms D n
d=D/n
digits(3)
d1=vpa(subs(d,[D n],[2.54e-2 13400]))
% 1.9e-6 m

syms n lam d
sin_teta=n*lam/d

sin_teta1=vpa(subs(sin_teta,[n lam d],[1 5893e-10 d1]))
% 0.311
teta1=vpa(asin(sin_teta1)*180/pi)
% 18.1 grad

sin_teta2=vpa(subs(sin_teta,[n lam d],[2 5893e-10 d1]))
% 0.622
teta2=vpa(asin(sin_teta2)*180/pi)
% 38.4 grad

sin_teta3=vpa(subs(sin_teta,[n lam d],[3 5893e-10 d1]))
% 0.933
teta3=vpa(asin(sin_teta3)*180/pi)
% 68.9 grad
