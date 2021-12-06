function [] = statusCam(source)
    frameRate_ = source.get('FrameRate');
    gain_ = double(source.get('Gain'));
    gain_ = 20*log10(gain_/256);
    gain_ = floor(gain_);
    exposure_ = double(source.get('Exposure'));
    exposure_ = exposure_/1000;
    fprintf("Parameters: \n");
    fprintf(['Exposure: ' num2str(exposure_) ' [ms]. \n']);
    fprintf(['Gain: ' num2str(gain_) ' [dB]. \n']);
    fprintf(['Frame rate: ' num2str(frameRate_) '. \n'])
end