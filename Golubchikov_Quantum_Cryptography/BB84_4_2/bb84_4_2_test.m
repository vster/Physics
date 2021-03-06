% https://ru.wikipedia.org/wiki/���������_��������_4%2B2
clear
format short
syms eta real
eta=2*pi/3
ket0=[1;0]
ket1=[0;1]

ket0x=cos(eta/2)*ket0+sin(eta/2)*ket1
ket1x=cos(eta/2)*ket0-sin(eta/2)*ket1
eq1=ket0x'*ket1x

M0x=ket0x*ket0x'
M1x=ket1x*ket1x'
M0x+M1x

ket0y=cos(eta/2)*ket0+1i*sin(eta/2)*ket1
ket1y=cos(eta/2)*ket0-1i*sin(eta/2)*ket1
eq2=ket0y'*ket1y

M0y=ket0y*ket0y'
M1y=ket1y*ket1y'
M0y+M1y

trace(ket0y*ket0y'*M0y)

a0d=1/(1+cos(eta))
P0d=a0d*(1-ket0y*ket0y')
P1d=a0d*(1-ket1y*ket1y')
P_d=1-P0d-P1d

a0p=1/(1+cos(eta))
P0p=a0p*(1-ket0x*ket0x')
P1p=a0p*(1-ket1x*ket1x')
P_p=1-P0p-P1p