score=zeros(1,1000);
m=1;
k=1;
while(m<=10)
    n=0;
        while(n<100)
            score(1,k)=n;
            n=n+1;
            k=k+1;
        end
    m=m+1;
end

l=1;
t=50;
while(l<=10)
    target=zeros(1,1000);
    target(1,1:t)=1;
    l=l+1;
    t=t+100;
    prec_rec(score,target);
end


