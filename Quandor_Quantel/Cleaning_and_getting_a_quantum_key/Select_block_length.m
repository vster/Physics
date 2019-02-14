% Select block length

% a) the probability of dark counts per pulse - DCR
% b) the number of received pulses in a series  - Nbits
% c) the number of transmitted pulses in the series - Npulses
clear
syms DCR Effsifted
ErrQ=1/2*DCR/(DCR+Effsifted) 
% DCR includes dark noises, flare and non-ideality 
% of interferometer balancing.
ErrQ1=vpa(subs(ErrQ,[DCR Effsifted],[0.05 0.5]))
% 0.045
b=1/ErrQ1
% 22.0

syms DCR Nbits Npulses
% Efficiency of generation of the sifted key in the series.
Effsifted=Nbits/Npulses 

% At the beginning of the cleaning procedure, transmit 
% to the input the magnitude of the error probability 
% ErrQ and the length of the registered pulse train.

% Estimate the number of errors N_err in the series.

% Divide the sifted key into blocks with a length of BlockLen, 
% depending on the value of b, equal to the inverse 
% error value (b = 1 / ErrQ), so that on average 
% a block has no more than one error.

% Make the key length of the SKRK and KKRK multiple 
% BlockLen by discarding (if necessary) the desired 
% number of last bits.

% QC blocks length
% Value b     BlockLen block length
%  b>31       31
%  15<b<=31   15
%  b>=15       7

% Select the block length for each iteration based on the current error. 
% To do this, after each iteration of cleaning N_err, 
% reduce by the amount of corrected bits (see § 3.5.4) 
% and evaluate the current error N_err / keylength, 
% where keylength is the current key length.
