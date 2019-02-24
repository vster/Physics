% He
% m1=4.00260 a.e.m.
% D
% m2=2.01410 a.e.m.
% Find the difference between the specific binding energy of nuclei
% He2_4 and H1_2
clear
digits(6)
syms Z mH A Z mn mc
Esv=931.5*(Z*mH+(A-Z)*mn-mc) % MeV                (7.11)

syms m1 m2
Esv1=931.5/4*(2*mH+2*mn-m1)
Esv2=931.5/2*(mH+mn-m2)
DEsv=Esv1-Esv2
% (1863*m2)/4 - (1863*m1)/8
Desv1=vpa(subs(DEsv,[m1 m2],[4.00260 2.01410]))
% 5.9616 MeV/nuclon