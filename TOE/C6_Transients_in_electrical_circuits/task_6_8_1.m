clear
syms U t T x
u(t)=U*exp(-t/T)
u(0),u(x),du(x)=diff(u(x),x)
syms tau r
Y(t)=1/r*(1-exp(-t/tau))  
i(t)=Y(t)*u(0)+int(Y(t-x)*du(x),x,0,t)
i1=U*(exp(-t/T)-exp(-t/tau))/(r*(1-tau/T))
simplify(i-i1)  % ������ ���������
% � ������ ������, ����� tau=T, ���������� ����������������, ������� ����� ���������
syms r L
i=U/L*t*exp(-r/L*t)
% �� ���� ������� ���������� ��� ����������� � ����� �������� i_m
% ��� tau=T
syms i_m e
i_m==U/(e*r)
