% There is a hologram from a small ball
% x0=50 cm
% E=E1*cos(w*t-k*r)  - light from subject
% E0*cos(w*t-k*x0)   - light from the reference beam
% lam=6400 A

% intensity maxima occur, when
% k*r-k*x0=2*pi*n
% r-x0=n*lam
% sqrt(yn^2+x0^2)=n*lam+x0
clear
syms n lam x0 
y(n)=sqrt(2*n*lam*x0+n^2*lam^2)
digits(3)
y1(n)=vpa(subs(y(n),[lam x0],[6400e-10 0.5]))
for n=1:5
    yv(n)=vpa(y1(n))*1e3;
end
disp(yv)
% [ 0.8, 1.13, 1.39, 1.6, 1.79] mm