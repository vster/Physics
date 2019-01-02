syms mr v R B e c
Fc=mr*v^2/R
% mr*(v^2/R)=e*v*B
% mr*c^2=e*c*B*R
%  =E
E=e*c*B*R
digits(4)
E=vpa(subs(E,[e c B R],[1.6e-19 3e8 1.8 1e3]))
% 8.64e-8 J 
E=E/1.6e-19
% 5.4e11 eV = 540 GeV