syms F L1 L2 alfa B
T=F*(L2*sin(alfa))
F1=I*L1*B
T=subs(T,F,F1)
% B*I*L1*L2*sin(alfa)
% L1*L2=A
T=I*A*B*sin(alfa)                        % (18-11)