% the fisrt group of points in PR space     
total_positive=5; total_negtive=5;


R1(1)=0.1; P1(1)=0.8;
R1(2)=0.2; P1(2)=0.7;
R1(3)=0.4; P1(3)=0.5;
R1(4)=0.6; P1(4)=0.4;
R1(5)=0.8; P1(5)=0.2;
open('isoF.fig');


% transform these points into ROC space
for i=1:5
tp1(i)=total_positive*R1(i);
fp1(i)=tp1(i)/P1(i)-tp1(i);
TPR1(i)=R1(i);
FPR1(i)=fp1(i)/total_negtive;
end
   
% the fisrt group of points in PR space
R2(1)=0.1; P2(1)=0.9;
R2(2)=0.2; P2(2)=0.7;
R2(3)=0.3; P2(3)=0.5;
R2(4)=0.6; P2(4)=0.4;
R2(5)=0.8; P2(5)=0.3;
open('isoF.fig');


% transform these points into ROC space
for i=1:5
tp2(i)=total_positive*R2(i);
fp2(i)=tp2(i)/P2(i)-tp2(i);
TPR2(i)=R2(i);
FPR2(i)=fp2(i)/total_negtive;
end

% export the curve made by points in PR space
plot(R1,P1,'r','LineWidth',2)
hold on
plot(R2,P2,'b','LineWidth',2);

% export the curve made by points in ROC space
plot(FPR1,TPR1,'r','LineWidth',2)
hold on
plot(FPR2,TPR2,'b','LineWidth',2) 
   

    


















