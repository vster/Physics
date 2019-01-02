% Units
clear
syms mile h m s
v=60*mile/h
digits(3)
v_mks=vpa(subs(v,[mile h],[1.61e3*m 3600*s]))
% (26.8*m)/s = 26.8 m/s