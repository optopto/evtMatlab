function[camera] = evtcam(frames)
camera = [cameras cameras cameras cameras];
[imagen,alto,ancho,frameRate,gain,exposure,numCameras] = captureDataEvt(frames);
for cont = 1:numCameras
    camera(cont) = cameras;
    camera(cont).frameRate = frameRate;
    camera(cont).Width = ancho;
    camera(cont).Heigth = alto;
    camera(cont).Gain = gain;
    camera(cont).Exposure = exposure;
    camera(cont).data = imagen;
end
end
