clear
ket1=[1;0;0]
ket2=[0;1;0]
ket3=[0;0;1]

syms a b c E
H=[a 0 b; a c 0; b 0 a]
I=eye(3)
eq1=det(H-E*I)
% - E^3 + 2*E^2*a + c*E^2 - E*a^2 - 2*c*E*a + E*b^2 + c*a^2 - c*b^2
Esol=solve(eq1,E)
%     c
% a + b
% a - b

[V,D]=eig(H)
%V =
%[ 0,             1,            -1]
%[ 1, a/(a + b - c), a/(b - a + c)]
%[ 0,             1,             1]
%D =
%[ c,     0,     0]
%[ 0, a + b,     0]
%[ 0,     0, a - b]

syms alfa beta gamma
ket_psi=[alfa;beta;gamma]

E1=c
eq1=H*ket_psi==c*ket_psi
%  a*alfa + b*gamma == alfa*c
%   a*alfa + beta*c == beta*c
% alfa*b + a*gamma == c*gamma
% [0;1;0]
ket_Psi1=[0;1;0]

E2=a+b
eq2=H*ket_psi==(a+b)*ket_psi
% [1;a/(a + b - c);1]
ket_Psi2=[1;a/(a + b - c);1]

E3=a-b
eq3=H*ket_psi==(a-b)*ket_psi
% [-1;a/(b - a + c);1]
ket_Psi3=[-1;a/(b - a + c);1]

% a)
ket_Psi0=[0;1;0]
% ket_Psi0=ket_Psi1
syms t hp real
ket_Psi(t)=exp(-i*E1*t/hp)*ket_Psi1
%                 0
% exp(-(c*t*1i)/hp)
%                 0

% b)
ket_Psi0=[0;0;1]
% ket_Psi0=?
