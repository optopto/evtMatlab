function [nar] = setEmergent(exposure,frameRate,gain,source)
    nar = nargin;
    switch nargin 
        case 2
           source = frameRate;
           source.FrameRate = 30;
           source.Exposure = 30000;
           source.Gain = 256;
           source.Offset = 0;           
        case 5
            if(frameRate < 2)
                fprintf("Parametro invalido \n")
                fprintf("Frame rate debe ser mayor o igual a 30 \n");
            else
                source.FrameRate = frameRate;
            end
            if(exposure > 32000 || exposure < 0)
                fprintf("Parametro invalido \n")
                fprintf("Exposición debe ser mayor a 0 y menor a 32000 \n")
            else
                source.Exposure = exposure;
            end
            if(gain > -48 && gain < 30)
                gainS = 10^(gain/20)*256;
                gainS = ceil(gainS);
                source.Gain = gainS;
            else
                fprintf("Parametro invalido \n")
                fprintf("Ganancia debe ser mayor a -48 [dB] y menor a 30 [dB] \n")
            end
    end
    statusCam(source);
end