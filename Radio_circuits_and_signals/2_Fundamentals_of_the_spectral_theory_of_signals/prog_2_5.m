% The periodic half-sequence of cosine pulses

clear
syms x;
digits(4)
TetaG=60
Teta=TetaG*pi/180
AM=1
N=10

F(x)=AM*(cos(x)-cos(Teta))/(1-cos(Teta))
F1(x)=piecewise(0<=x<Teta,F(x),Teta<x<pi,0)

fplot(F1(x),[0 pi])

A0=int(F1(x),x,0,pi)/pi
% -(pi/3 - 3^(1/2))/pi
vpa(A0)
% 0.218

syms k integer;
assume(k>=1)
A(k)=2*int(F1(x)*cos(k*x),x,0,pi)/pi
% piecewise(k == 1, ((2*pi)/3 - 3^(1/2)/2)/pi, k ~= 1, -(2*(sin((pi*k)/3) - 3^(1/2)*k*cos((pi*k)/3)))/(pi*(- k^3 + k)))
A1=A(1)
AD0=20*log10(abs(A0/A1))

for k=1:N
    kv(k)=k;
    Av(k)=A(k);
    ADv(k)=20*log10(abs(A(k))/A1);
end

Av0=[0;vpa(A0);vpa(AD0)];
Av0'
% [ 0, 0.218, -5.075]
ft=[kv;vpa(Av);vpa(ADv)];
ft'
% [  1,     0.391,      0]
% [  2,    0.2757, -3.036]
% [  3,    0.1378, -9.057]
% [  4,   0.02757, -23.04]
% [  5,  -0.02757, -23.04]
% [  6,   -0.0315, -21.88]
% [  7, -0.009845, -31.98]
% [  8,  0.009845, -31.98]
% [  9,   0.01378, -29.06]
% [ 10,  0.005012, -37.84]