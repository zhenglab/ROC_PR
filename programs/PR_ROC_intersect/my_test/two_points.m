
total_positive=10; total_negtive=10;

% the fisrt group of points in PR space 
R1=[0.1 0.4 0.6];P1=[1 2/3 6/11];

open('isoF.fig');

% transform these points into ROC space
for i=1:3
tp1(i)=total_positive*R1(i);
fp1(i)=tp1(i)/P1(i)-tp1(i);
TPR1(i)=R1(i);
FPR1(i)=fp1(i)/total_negtive;
end
   
% the second group of points in PR space
R2=[0.1 0.5 0.8];P2=[0.5 5/8 8/13];

open('isoF.fig');

% transform these points into ROC space
for i=1:3
tp2(i)=total_positive*R2(i);
fp2(i)=tp2(i)/P2(i)-tp2(i);
TPR2(i)=R2(i);
FPR2(i)=fp2(i)/total_negtive;
end

% export the first curve in PR space
P1=P1(:);
R1=R1(:);
plot([0;R1],[1;P1],'b','LineWidth',2)
hold on
plot([R1;1],[P1;0],'b','LineWidth',2)

%export the first curve in ROC space
FPR1=FPR1(:);TPR1=TPR1(:);
hold on
plot([0;FPR1],[0;TPR1],'b','LineWidth',2)
hold on
plot([FPR1;1],[TPR1;1],'b','LineWidth',2)

% export the second curve in PR space
P2=P2(:);
R2=R2(:);
hold on
plot([0;R2],[1;P2],'r','LineWidth',2)
hold on
plot([R2;1],[P2;0],'r','LineWidth',2)

% export the second curve in ROC space
FPR2=FPR2(:);TPR2=TPR2(:);
hold on
plot([0;FPR2],[0;TPR2],'r','LineWidth',2)
hold on
plot([FPR2;1],[TPR2;1],'r','LineWidth',2)

   

    


















