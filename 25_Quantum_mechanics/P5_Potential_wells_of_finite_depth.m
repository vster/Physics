% Potential wells of finite depth

% Schredinger equation
% d2psi/dx2=(2*m/hp^2)*(U0-E)psi

syms x psi(x) m hp U0 E 
eqn=diff(psi,x,2)==(2*m/hp^2)*(U0-E)*psi
solpsi=dsolve(eqn)
% C4*exp((2^(1/2)*x*(-m*(E - U0))^(1/2))/hp) + C5*exp(-(2^(1/2)*x*(-m*(E - U0))^(1/2))/hp)
pretty(solpsi)
% psi = exp(-eta*x) and exp(+eta*x)
% where eta=sqrt(2*m*(U0-E)/hp^2)                     (25-18)

% In area 2
% psi2=A*exp(-eta*x)
% where eta=sqrt(2*m*(U0-E)/hp^2)
% and
% In area 1
% psi1=B*cos(k*x)
% where k=sqrt(2*m*E/hp^2)

% If x=x0
% psi1(x0)=psi2(x0) => B*cos(k*x)=A*exp(-eta*x)
% -k*B*sin(k*x0)=-eta*A*exp(-eta*x)
% k*tan(k*x0)=eta

% tan_kx0=eta/k

syms m U0 E hp
eta=sqrt(2*m*(U0-E)/hp^2)
k=sqrt(2*m*E/hp^2)
tan_kx0=eta/k

% tan_kx0=eta/k=sqrt(U0/E-1)
% Put y0=sqrt((2*m/hp^2)*U0)x0 and psi=k*x0
% then
% tan_y=sqrt(y0^2/y^2-1)                       (25-19)

syms m U0 hp x0
y0=sqrt(2*m*U0)*x0/hp
digits(4)
y0=subs(y0,[m U0 hp x0],sym([9.1e-31 800*1.6e-19 1.05e-34 0.5e-10],'d'))
vpa(y0)
% 7.268

% tan_y=sqrt(y0^2/y^2-1)                       (25-19)
y1=1.38
y3=4.11
y5=6.69
syms y m
eV=1.6e-19
k=y/x0
E=(hp*k)^2/(2*m)
% (hp^2*y^2)/(2*m*x0^2)
E1=subs(E,[hp y m x0],sym([1.05e-34 y1 9.1e-31 0.5e-10],'d'))/eV
% 28.84 eV
E3=subs(E,[hp y m x0],sym([1.05e-34 y3 9.1e-31 0.5e-10],'d'))/eV
% 255.8 eV
E5=subs(E,[hp y m x0],sym([1.05e-34 y5 9.1e-31 0.5e-10],'d'))/eV
% 677.8 eV

% for n=2 and n=4
% wave functions in area 1
% psi1=B*sin(k*x)
% At point x=x0
% B*sin(k*x0)=A*exp(-eta*x0)
% -k*B*cos(k*x0)=-eta*A*exp(-eta*x0)
% cot(k*x0)=-eta/k                     (25-20)
% cot(sqrt(2*m*E/hp^2)*x0)=-sqrt(u0/E-1)
% or
% cot(y)=-sqrt(y0^2/y^2-1)