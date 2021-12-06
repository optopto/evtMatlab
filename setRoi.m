function [position] = setRoi(h,vid)
    roi = imrect(h.Parent);
    position = wait(roi);   
    newPosition = roiAprox(position);
    vid.ROIPosition = newPosition;
    delete(roi);
end
