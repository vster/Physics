% Periodic sequence of pulses of arbitrary shape

clear
pi1=pi
syms x pi;
digits(3)
N=5
IMP=[0 0; 30 0.25; 60 0.7; 90 0.78; 120 0.2; 150 0.05; 180 0; 225 0; 270 0; 315 0; 360 0]
X=IMP(:,1)'
Y=IMP(:,2)'
L=180
% Use spline

A0=1/(2*L)*int(F1(x),x,0,2*L)/pi
%
vpa(A0)
%

syms k integer;
assume(k>=1)
A(k)=int(F1(x)*cos(k*x),x,0,2*pi)/pi
%
%


B(k)=int(F1(x)*sin(k*x),x,0,2*pi)/pi
%
%


for k=1:N
    kv(k)=k;
    Av(k)=A(k);
    Bv(k)=B(k);
    Cv(k)=sqrt(Av(k)^2+Bv(k)^2);
    phi(k)=(180/pi1)*atan(Bv(k)/Av(k));
end

Av0=[0;vpa(A0)];
Av0'
%
ft=[kv;vpa(Av);vpa(Bv);vpa(Cv);vpa(phi)];
ft'
