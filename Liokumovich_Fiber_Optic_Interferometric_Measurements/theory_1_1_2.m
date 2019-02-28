% tauc - coherence time
% lc - cohernece length
clear
syms tauc c n
lc=c/n*tauc                              % (1.20)

% tetac - solid angle of coherence
syms lam Ss
tetac=lam^2/Ss                           % (1.21)
% where
% Ss - source surface area

syms r0 
% The distance between the points of the wave front
r=r0*lam/sqrt(Ss)                        % (1.22)
% where
% r0 - The distance from the screen to the source

% Non-monochromatic source
syms lam nu Dlam Dnu 
tauc=1/Dnu
Dnu=c*Dlam/lam^2
Dlam=c*Dnu/nu^2                          % (1.23)

% Ray path difference Dl
% for Mach-Zehnder and Michelson interferometers
% Dl=|l1-l2|                             (1.24)
% for the Fabry-Perot interferometer
% Dl=2*l                                 (1.25)

syms n Dl lam nu c
DL=n*Dl
syms DL
Dphi=2*pi*DL/lam
Dphi=2*pi*DL*nu/c                        % (1.26)

% The transfer characteristic of the interferometer K
% K(Dl)=I(Dl)/I0
% K(Dphi)=I(Dphi)/I0                       (1.27)

% Spectral transfer characteristic H(nu)
% H(nu)=I(nu)/I0                           (1.28)

% For the Fabry-Perot interferometer, such a characteristic 
% as sharpness is effective.
% q=Dphi0.5/pi                             (1.29)

% Interferometer constant
Dnus=c/DL
Dlams=lam^2/DL                            % (1.30)
