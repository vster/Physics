crcGen = comm.CRCGenerator('z4+z3+z2+z+1');
crcDet = comm.CRCDetector('z4+z3+z2+z+1');

numFrames = 20;
frmError = zeros(numFrames,1);

for k = 1:numFrames
    data = randi([0 1],21,1);                   % Generate binary data
    encData = step(crcGen,data);                % Append CRC bits
    modData = pskmod(encData,2);                % BPSK modulate
    rxSig = awgn(modData,5);                    % AWGN channel, SNR = 5 dB
    demodData = pskdemod(rxSig,2);              % BPSK demodulate
    [~,frmError(k)] = step(crcDet,demodData);  % Detect CRC errors
end

find(frmError)