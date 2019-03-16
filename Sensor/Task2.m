brightness_step = (5-0)/20;
% Use writePWMDutyCycle for pulse control
% Use writePWMVoltage for voltage control
while 1
    for i = 1:20
        writePWMVoltage(a, 'D11', i*brightness_step);
        pause(0.1);
    end
    for i = 1:20
        writePWMVoltage(a, 'D11', 5-i*brightness_step);
        pause(0.1);
    end

end