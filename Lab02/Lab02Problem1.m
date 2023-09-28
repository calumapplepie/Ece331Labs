clear all
clf
k = 0;
for t=-10:0.01:10
    k=k+1
    if(t>0)&&(t<=1)
        f(k)=t; else f(k)=0;
    end

    u= -2*t+5;

    if(u>=0) && (u<=1)
        g(k)=u; else g(k)=0; 
    end

end
t= -10:0.01:10;
subplot(2,1,1),plot(t,f)
subplot(2,1,2),plot(t,g)