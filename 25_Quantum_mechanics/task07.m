% Energy Scale Assessment
clear
syms n hp m L
digits(3)
E(n)=n^2*pi^2*hp^2/(sym(2,'d')*m*L^2)
% (4.93*hp^2*n^2)/(L^2*m)
% a)
E2=subs(E,[hp m L n],[1.05e-34 9.11e-31 4e-10 2])
E2=vpa(E2)
% 1.49e-18 J 
E2ev=E2/1.6e-19
% 9.33 eV
% b)
% E4-E2
E4=subs(E,[hp m L n],[1.05e-34 9.11e-31 4e-10 4])
E4=vpa(E4)
% 5.97e-18 J
E4ev=E4/1.6e-19
% 37.3 eV
hf=E4-E2
% 4.48e-18
h=6.6e-34
f=hf/h
% 6.79e15 1/s
c=3e8 % m/s
lam=c/f
% 4.42e-8 = 44.2 nm