% Experimental confirmation of de Broglie's hypothesis

% Bragg-Woolf condition
% 2*d*sin(teta)=n*lamB                    (2.10)
% where
% d - distance between reflective planes
% teta - Bragg angle
% n=1,2,3...

% Bragg-Woolf condition with regard to refraction
% 2*d*sqrt(ne^2-cos(teta)^2)=n*lamB
% where
% ne - refractive index of electron waves in a crystal

% The Experience of Davisson and Jermer
clear
syms hp me e U
lamB=2*pi*hp/sqrt(2*me*e*U)
digits(3)
lamB1=vpa(subs(lamB,[hp me e U],[1.05e-34 9.1e-31 1.6e-19 54]))
% 1.66e-10 = 0.166 nm

lamB=2*pi*hp/sqrt(2*me*e*U)
% Use (2.10) then
% 2*d*sin(teta)=n*2*pi*hp/sqrt(2*me*e*U(n))
% sqrt(u(n))=C*n
% where C=pi*hp/(d*sin(teta)*sqrt(2*e*me))=const

% Experiments on the diffraction of neutrons and particle beams
syms hp mn k T
% E=3/2*k*T
lamB=2*pi*hp/sqrt(3*mn*k*T)                    % (2.12)
lamB=vpa(subs(lamB,[hp mn k T],[1.05e-34 1.67e-27 1.38e-23 300]))
% 1.45e-10 = 0.145 nm

% From (2.10) 2*d*sin(teta)=n*lamB
% lamBmax=max(2*d*sin(teta)/n))=2*d