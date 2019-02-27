hConEnc = comm.ConvolutionalEncoder;
hMod = comm.DPSKModulator('BitInput',true);
hChan = comm.AWGNChannel('NoiseMethod', ...
    'Signal to noise ratio (SNR)',...
    'SNR',10);
hDemod = comm.DPSKDemodulator('BitOutput',true);
hDec = comm.ViterbiDecoder('InputFormat','Hard');
hError = comm.ErrorRate('ComputationDelay',3,'ReceiveDelay', 34);

for counter = 1:20
    data = randi([0 1],30,1);
    encodedData = step(hConEnc, data);
    modSignal = step(hMod, encodedData);
    receivedSignal = step(hChan, modSignal);
    demodSignal = step(hDemod, receivedSignal);
    receivedBits = step(hDec, demodSignal);
    errors = step(hError, data, receivedBits);
end

errors(2)
