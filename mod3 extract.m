for m=1:160000
    if mod(dogRedLayerNew(m),2)==1 && mod(dogRedLayerNew(m),3)==0;
        recoveredImage(m)=1;
    elseif mod(dogRedLayerNew(m),2)==0 && mod(dogRedLayerNew(m),3)==0
        recoveredImage(m)=0;
    end
end
recoveredImage=logical(recoveredImage);
recoveredImage=expand(recoveredImage);
image(recoveredImage)
