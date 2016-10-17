deviceReader = audioDeviceReader;
% deviceReader = dsp.AudioFileReader('kogekunst.wav');
deviceWriter = audioDeviceWriter('SampleRate',deviceReader.SampleRate);
deviceReader.SamplesPerFrame = 64;

delay = Delay();
disp('Begin Signal Input...')
audioTestBench(delay);
tic
while toc<50
   
    mySignal = deviceReader();
    myProcessedSignal = process(delay, mySignal);
    deviceWriter(myProcessedSignal);
    
    %C = centroid(mySignal, deviceReader.SampleRate);
    %disp(C);
    
end

release(deviceReader)
release(deviceWriter)
