dogRedLayer=dog(:,:,1);
dogRedLayerNew=zeros(400,400);
for n=1:160000
    if hidden1flatten(n)==1
        if mod(dogRedLayer(n),2)==0
            dogRedLayerNew(n)=dogRedLayer(n)-1;
        else
            dogRedLayerNew(n)=dogRedLayer(n);
        end
    elseif hidden1flatten(n)==0
        if mod(dogRedLayer(n),2)==1
            dogRedLayerNew(n)=dogRedLayer(n)-1;
        else
            dogRedLayerNew(n)=dogRedLayer(n);
        end
    end
end
newDogImage=cat(3,dogRedLayerNew,dog(:,:,2),dog(:,:,3));
image(newDogImage)
