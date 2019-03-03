clear
syms lam1 lam2 t N10
N2(t)=N10*(lam1/(lam2-lam1))*(exp(-lam1*t)-exp(-lam2*t))
syms T1 T2
N2(t)=simplify(subs(N2,[lam1 lam2],[log(sym(2))/T1 log(sym(2))/T2]))
% (N10*T2*(1/2^(t/T1) - 1/2^(t/T2)))/(T1 - T2)
dN2t=diff(N2,t)
% -(N10*T2*((1/2^(t/T1)*log(2))/T1 - (1/2^(t/T2)*log(2))/T2))/(T1 - T2)
tm=solve(dN2t==0,t)
% -(T1*T2*log(T2/T1))/(T1*log(2) - T2*log(2))
syms T eps
tm=subs(tm,[T1 T2],[T T+eps])
% -(T*log((T + eps)/T)*(T + eps))/(T*log(2) - log(2)*(T + eps))
tm=limit(tm,eps,0)
% T/log(2)
