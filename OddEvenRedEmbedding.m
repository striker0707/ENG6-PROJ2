dog=imread('dogImage.png');
hidden1=imread('hidden01.png');
hidden1flatten=flatten(hidden1);
% then flatten and begin embedding

dogRedLayer=dog(:,:,1);
dogRedLayerNew=zeros(400,400);
first=@(x) x(1);
for n=1:160000
    if hidden1flatten(n)==1
        if first(factor(dogRedLayer(n)))==2
            dogRedLayerNew(n)=dogRedLayer(n)-1;
        else
            dogRedLayerNew(n)=dogRedLayer(n);
        end
    elseif hidden1flatten(n)==0
        if first(factor(dogRedLayer(n)))~=2
            dogRedLayerNew(n)=dogRedLayer(n)-1;
        else
            dogRedLayerNew(n)=dogRedLayer(n);
        end
    end
end
newDogImage=cat(3,dogRedLayerNew,dog(:,:,2),dog(:,:,3));
image(newDogImage)
