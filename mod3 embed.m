dogRedLayer=dog(:,:,1);
dogRedLayerNew=zeros(400,400);
for n=1:160000
    if hidden1flatten(n)==1 % if light, mod3=0 and mod2=1 --> odd multiple of 3
        if mod(dogRedLayer(n),3)==0 && mod(dogRedLayer(n),2)==1
            dogRedLayerNew(n)=dogRedLayer(n);
        elseif mod(dogRedLayer(n),3)==0 && mod(dogRedLayer(n),2)==0
            dogRedLayerNew(n)=dogRedLayer(n)+3;
        elseif mod(dogRedLayer(n),3)==1 && mod(dogRedLayer(n),2)==0
            dogRedLayerNew(n)=dogRedLayer(n)-1;
        elseif mod(dogRedLayer(n),3)==1 && mod(dogRedLayer(n),2)==1
            dogRedLayerNew(n)=dogRedLayer(n)+2;
        elseif mod(dogRedLayer(n),3)==2 && mod(dogRedLayer(n),2)==0
            dogRedLayerNew(n)=dogRedLayer(n)+1;
        elseif mod(dogRedLayer(n),3)==2 && mod(dogRedLayer(n),2)==1
            dogRedLayerNew(n)=dogRedLayer(n)-2;
        end
    elseif hidden1flatten(n)==0 % if dark, mod3=1 and mod2=0 --> even multiple of 3
        if mod(dogRedLayer(n),3)==0 && mod(dogRedLayer(n),2)==1
            dogRedLayerNew(n)=dogRedLayer(n)+3;
        elseif mod(dogRedLayer(n),3)==0 && mod(dogRedLayer(n),2)==0
            dogRedLayerNew(n)=dogRedLayer(n);
        elseif mod(dogRedLayer(n),3)==1 && mod(dogRedLayer(n),2)==0
            dogRedLayerNew(n)=dogRedLayer(n)+2;
        elseif mod(dogRedLayer(n),3)==1 && mod(dogRedLayer(n),2)==1
            dogRedLayerNew(n)=dogRedLayer(n)-1;
        elseif mod(dogRedLayer(n),3)==2 && mod(dogRedLayer(n),2)==0
            dogRedLayerNew(n)=dogRedLayer(n)-2;
        elseif mod(dogRedLayer(n),3)==2 && mod(dogRedLayer(n),2)==1
            dogRedLayerNew(n)=dogRedLayer(n)+1;
        end
    end
end
newDogImage=cat(3,dogRedLayerNew,dog(:,:,2),dog(:,:,3));
image(newDogImage)
