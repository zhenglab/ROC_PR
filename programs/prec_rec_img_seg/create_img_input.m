target=zeros(32,32); 
target(16:32,1:32)=1; %Set up the GT image(binary image).

score=zeros(32,32);
score(1,1:32)=64; 
score(16:20,1:32)=64;
score(21:25,1:32)=128;
score(26:31,1:32)=192;
%Set up the processed image(gray image with four different 
%gray values). Actually, the first line is FP, the lines 
%from 16 to 31 are TP, and the line of 32 is FN. 

prec_rec_imgPrePro(score,target);

