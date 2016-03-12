recoveredImage=uint8(zeros(400,400));
for m=1:160000
    if mod(dogRedLayerNew(m),2)==0;
        recoveredImage(m)=0;
    else
        recoveredImage(m)=1;
    end
end
recoveredImage=expand(recoveredImage);
image(recoveredImage)
