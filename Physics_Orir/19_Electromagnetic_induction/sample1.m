% A = 5x6 cm^2
% n = 200
% w = 60 rot/s
% B = 5000 Gs (0.5 T)
clear
syms B A w1 w t
EMF=B*A*w1*sin(w*t)                 % (19-1)
digits(3)
EMF_coil=vpa(subs(EMF,[B A w1],[0.5 5*6e-4 120*pi]))
% 0.565*sin(t*w)
n=200
EMF1=EMF_coil*n
% 113.0*sin(t*w) V
