% dr=dr(w,T)*exp(-A(w,T)*x)=E(w,T)*exp(-A(w,T)*x)*dx
% r=int(0:inf)E(w,T)*exp(-A(w,T)*x)dx
clear
syms w T
syms E(w,T) A(w,T)
syms ksi
r=E(w,T)/A(w,T)*int(exp(-ksi),ksi,0,inf)
% r = E(w, T)/A(w, T) = rbb(w,T)
 