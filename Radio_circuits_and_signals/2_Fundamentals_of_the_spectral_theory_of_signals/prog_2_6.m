% Periodic sequence of rectangular pulses

clear
syms x;
digits(4)
alfa=0.5
b=0.5*pi*alfa
AM=1
N=20

% F(x)=(AM*sign(cos(x/alfa))+1)/2
F1(x)=piecewise(0<=x<alfa*pi,AM,alfa*pi<x<=pi,0)
% F1(x)=F(x)

fplot(F1(x),[0 pi])
grid on;

A0=int(F1(x),x,0,pi)/pi
% 1/2
vpa(A0)
% 0.5

syms k integer;
assume(k>=1)
A(k)=2*int(F1(x)*cos(k*x),x,0,pi)/pi
% (2*sin((pi*k)/2))/(k*pi)
A1=A(1)
AD0=20*log10(abs(A0/A1))

for k=1:N
    kv(k)=k;
    Av(k)=A(k);
    ADv(k)=20*log10(abs(A(k))/A1);
end

Av0=[0;vpa(A0);vpa(AD0)];
Av0'
% [ 0, 0.5, -2.098]
ft=[kv;vpa(Av);vpa(ADv)];
ft'
%[  1,   0.6366,      0]
%[  2,        0,   -Inf]
%[  3,  -0.2122, -9.542]
%[  4,        0,   -Inf]
%[  5,   0.1273, -13.98]
%[  6,        0,   -Inf]
%[  7, -0.09095,  -16.9]
%[  8,        0,   -Inf]
%[  9,  0.07074, -19.08]
%[ 10,        0,   -Inf]
%[ 11, -0.05787, -20.83]
%[ 12,        0,   -Inf]
%[ 13,  0.04897, -22.28]
%[ 14,        0,   -Inf]
%[ 15, -0.04244, -23.52]
%[ 16,        0,   -Inf]
%[ 17,  0.03745, -24.61]
%[ 18,        0,   -Inf]
%[ 19, -0.03351, -25.58]
%[ 20,        0,   -Inf]