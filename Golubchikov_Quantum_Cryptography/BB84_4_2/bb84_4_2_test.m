% https://ru.wikipedia.org/wiki/ вантовый_протокол_4%2B2
syms eta real
eta=pi/3
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

trace(ket1y*ket1y'*M0x)

a0d=1/(1+cos(eta))
P0d=a0d*(1-ket0y*ket0y')
P1d=a0d*(1-ket1y*ket1y')
P_d=1-P0d-P1d