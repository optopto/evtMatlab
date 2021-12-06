function [] = acquisitionEmergent(directorio,secuencia,vid,option)
    nameIm = 'imagen';
    vid.FramesPerTrigger = secuencia;
    createDir(directorio)
    cd(directorio)
    switch nargin
        case 3
            preview(vid);
            vid.FramesPerTrigger = secuencia;
            start(vid)
            stoppreview(vid);
            img =  getdata(vid);
            countIma = 1;
            while countIma <= secuencia     
                if(countIma > 0 && countIma < 10)
                    imwrite(img(:,:,1,countIma),[nameIm '000' num2str(countIma) '.tiff']);
                elseif(countIma >= 10 && countIma < 100)
                    imwrite(img(:,:,1,countIma),[nameIm '00' num2str(countIma) '.tiff']);
                elseif(countIma >= 100 && countIma < 1000)
                    imwrite(img(:,:,1,countIma),[nameIm '0' num2str(countIma) '.tiff']);
                end
                fprintf(['Saved image ' num2str(countIma) ' \n']);
                countIma = countIma + 1;
            end
            cd('C:\Users\optolab\Desktop\PULPOS\matlab_')
        case 4
            preview(vid);
            start(vid)
            stoppreview(vid);
            img =  getdata(vid);
            [w,h,~,~] = size(img);
            average = uint8(zeros(w,h));
            countIma = 1;
            while countIma <= secuencia     
                average = average + img(:,:,1,countIma);             
                countIma = countIma + 1;
            end
            average = average/secuencia;
            
            imwrite(average,['average_' nameIm '.tiff']);
            cd('C:\Users\optolab\Desktop\PULPOS\matlab_')
    end
end