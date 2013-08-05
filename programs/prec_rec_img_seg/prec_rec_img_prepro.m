function[score,target]=prec_rec_imgPrePro(imgSeg,GT)

imshow(imgSeg,[])
figure,imshow(GT,[]) %Show two compared images

if(isrgb(imgSeg))
imgSeg=rgb2gray(imgSeg); %Convert to grayscale image
end

imgSeg=double(imgSeg); %Convert the input to the float style
score=imgSeg(:); %Convert the input to vector


if(isrgb(GT))
GT=rgb2gray(GT); 
end

GT=double(GT); 
target=GT(:); 

prec_rec(score,target);



