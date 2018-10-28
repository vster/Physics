% Example 2
% L=10e-10 m, n=2
% hf=E2-E1
syms n
E1=sym(5.97e-18,'d') % J
E(n)=E1*n^2
hf=vpa(E(2)-E(1)) 
% 1.79e-17 J
h=6.6e-34
f=hf/h
% 2.71e16 1/s
c=3e8 % m/s
lam=c/f
% 1.11e-8 m = 111 A