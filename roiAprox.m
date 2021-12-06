function [out] = roiAprox(position)
    height = 4:4:1464;
    width = 16:16:1936;
    xRoi = aprox(width,position(1));
    yRoi = aprox(height,position(2));
    xAprox = aprox(width,position(3));
    yAprox = aprox(height,position(4));
    out = [xRoi yRoi xAprox yAprox];
    function [out] = aprox(compare,num)
         newMatrix =  diff(sign(compare - num));
         [~,ind] = max(newMatrix);
         out = compare(ind);
    end
end