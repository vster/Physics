% https://ru.wikipedia.org/wiki/ вантовый_протокол_4%2B2
clear
format short
global eta real
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

trace(ket1x*ket1x'*M1x)

% Sender A
size=200;
DataA=randi([0 1],1,size);
disp('Alice Data')
disp(DataA(1:10))

BasisA=randi([0 1],1,size);
disp('Alice Basis')
disp(BasisA(1:10))

