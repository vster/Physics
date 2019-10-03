% #08
clear
format short
digits(3)
U=100; % В
R=20; % Ом
X_L=5; % Ом
X_C=10; % Ом

Ud=U
% Комплексные сопротивления
Z1=R, Z2=1j*X_L, Z3=R, Z4=-1j*X_C
Z12=Z1+Z2, Z34=Z3+Z4
Z=Z12*Z34/(Z12+Z34)
% Ток на входе цепи
Id=Ud/Z, Ip=vpa([abs(Id),angle(Id)*180/pi])
% Токи в ветвях 1 и 2
Id1=Ud/Z12, Ip1=vpa([abs(Id1),angle(Id1)*180/pi])
Id2=Ud/Z34, Ip2=vpa([abs(Id2),angle(Id2)*180/pi])
% Действующие значения токов ветвей
I=Ip(1),I1=Ip1(1), I2=Ip2(1)
% Напряжения на элементах и между точками a и b
Ud_R1=Id1*Z1, Up_R1=vpa([abs(Ud_R1),angle(Ud_R1)*180/pi])
Ud_L=Id1*Z2, Up_L=vpa([abs(Ud_L),angle(Ud_L)*180/pi])
Ud_R2=Id2*Z3, Up_R2=vpa([abs(Ud_R2),angle(Ud_R2)*180/pi])
Ud_C=Id2*Z4, Up_C=vpa([abs(Ud_C),angle(Ud_C)*180/pi])
Ud_ab=Ud_R2-Ud_R1, Up_ab=vpa([abs(Ud_ab),angle(Ud_ab)*180/pi])
S=Ud*Id'
Sd_Z=Id1^2*Z1+Id1^2*Z2+Id2^2*Z3+Id2^2*Z4
x=[0,real(Id)]
y=[0,imag(Id)]
plot(x,y,'b')
xlim([-10,10])
ylim([-10,10])
hold on
x=[0,real(Id1)]
y=[0,imag(Id1)]
plot(x,y,'b')
x=[0,real(Id2)]
y=[0,imag(Id2)]
plot(x,y,'b')
grid
hold off
x=[0,real(Ud)]
y=[0,imag(Ud)]
plot(x,y,'r')
xlim([-150,150])
ylim([-150,150])
hold on
x=[0,real(Ud_R1)]
y=[0,imag(Ud_R1)]
plot(x,y,'r')
x=[0,real(Ud_R2)]
y=[0,imag(Ud_R2)]
plot(x,y,'r')
x=[0,real(Ud_L)]
y=[0,imag(Ud_L)]
plot(x,y,'r')
x=[0,real(Ud_C)]
y=[0,imag(Ud_C)]
plot(x,y,'r')
grid
hold off
Ud_R1+Ud_L
Ud_R2+Ud_C
