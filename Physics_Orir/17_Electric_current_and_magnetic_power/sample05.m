clear
syms R v m q B
T=2*pi*R/v
% R=m*v/(q*B)
T=subs(T,R,m*v/(q*B))
% T=(2*pi*m)/(B*q)