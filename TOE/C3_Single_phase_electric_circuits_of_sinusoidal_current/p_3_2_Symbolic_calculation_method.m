% Symbolic calculation method

% Uv=a1+i*b1=U*cos(psiu)+U*sin(psiu)=U*exp(i*psiu)
syms U psiu real
Uv=U*exp(i*psiu)
% Iv=a2+i*b2=I*cos(psii)+I*sin(psii)=I*exp(i*psii)
syms I psii real
Iv=I*exp(i*psii)

% Complex resistance
Z=Uv/Iv
% (U*exp(-psii*1i)*exp(psiu*1i))/I
% Z=Uv/Iv=(U/I)*exp(1i*(psiu-psii))=z*exp(i*phi)
% Z=z*cos(phi)+i*z*sin(phi)=(R+i*X)
% z - chain impedance
% phi - shear angle between voltage and current

% Complex conductivity
Y=Iv/Uv
% (I*exp(psii*1i)*exp(-psiu*1i))/U
% Y=Iv/Uv=1/Z=y*exp(-i*phi)
% Y=y*cos(phi)-i*y*sin(phi)=(G-i*b)

% Correspondence between instantaneous and complex voltages and currents
% uR=i*R = R*Iv
% uL=L*di/dt = j*w*L*Iv
% uC=1/C*int())i*dt = -i*(1/w*C)*Iv=Iv/(i*w*C)
% iG=G*u = G*Uv
% iC=C*du/dt = i*w*C*Uv

% Integrated power
S=Uv*Iv'
% I*U*exp(-psii*1i)*exp(psiu*1i)
% Sv=S*exp(i*(psiu-psii))=S*exp(i*phi)
% Sv=S*cos(phi)+i*S*sin(phi)=P+i*Q

% Kirchhoff's laws in an integrated recording form
% 1st Kirchhoff Law
% sum(k=1:K)Iv(k)=0

% 2nd Kirchhoff Law
% sum(m:Q)Ev(q)=sum(n=1:N)Iv(n)*Z(n)