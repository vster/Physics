noiseVar = 2e-1;
frameLength = 300;
hConEnc = comm.ConvolutionalEncoder('TerminationMethod','Truncated');
hMod = comm.PSKModulator('BitInput',true,'PhaseOffset',0);
hChan = comm.AWGNChannel('NoiseMethod','Variance', ...
    'Variance',noiseVar);

hAPPDec = comm.APPDecoder(...
    'TrellisStructure',poly2trellis(7,[171 133]), ...
    'Algorithm','True APP','CodedBitLLROutputPort',false);
hDemod = comm.PSKDemodulator('BitOutput',true,'PhaseOffset',0, ...
    'DecisionMethod','Approximate log-likelihood ratio', ...
    'Variance',noiseVar);     
hError = comm.ErrorRate;

for counter = 1:5
     data = randi([0 1],frameLength,1);
     encodedData = step(hConEnc,data);
     modSignal = step(hMod,encodedData);
     receivedSignal = step(hChan,modSignal);
     demodSignal = step(hDemod,receivedSignal);
     % The APP decoder assumes a polarization of the soft inputs that is
     % inverse to that of the demodulator soft outputs. Change the sign of
     % demodulated signal.
     receivedSoftBits = step(hAPPDec,zeros(frameLength,1),-demodSignal);
     % Convert from soft-decision to hard-decision.
     receivedBits = double(receivedSoftBits > 0);
     % Count errors
     errorStats = step(hError,data,receivedBits);
end

fprintf('Error rate = %f\nNumber of errors = %d\n', ...
     errorStats(1), errorStats(2))
 