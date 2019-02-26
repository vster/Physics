enc = comm.BCHEncoder;
mod = comm.DPSKModulator('BitInput',true);
chan = comm.AWGNChannel(...
         'NoiseMethod','Signal to noise ratio (SNR)','SNR',10);
demod = comm.DPSKDemodulator('BitOutput',true);                                  
dec = comm.BCHDecoder;
errorRate = comm.ErrorRate('ComputationDelay',3);

for counter = 1:20
  data = randi([0 1], 30, 1);
  encodedData = step(enc, data);
  modSignal = step(mod, encodedData);
  receivedSignal = step(chan, modSignal);
  demodSignal = step(demod, receivedSignal);
  receivedBits = step(dec, demodSignal);
  errorStats = step(errorRate, data, receivedBits);
end

fprintf('Error rate = %f\nNumber of errors = %d\n', ...
  errorStats(1), errorStats(2))