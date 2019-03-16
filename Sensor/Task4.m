fs=261.6256
while 1
configurePin(a, 'D12', 'pullup');
speaker_status = readDigitalPin(a, 'D12')

        
        if speaker_status == 0
            amp=10 
            fs= fs +50  % sampling frequency
            duration=5
            freq=100
            values=0:1/fs:duration;
            b=amp*sin(2*pi* freq*values)
            sound(b)
            i = i+1;
        end
        
end
