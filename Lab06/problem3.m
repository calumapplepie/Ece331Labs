clear
t=0:0.01:15;
x1=0.5;
x2=1/3;
x3=0;
x4=0.504;


for k=1:60
    if rem(k,2)==1;
        x1=x1+(-1)^((k-1)/2)*2/(pi*k)*cos(k*t)
    end
    x2=x2+(4/pi^2)*((-1)^k/(k)^2)*(cos(k*pi*t))
    x3=x3+(2/pi)*1/k*sin(pi*k*t);
    x4=x4+0.504*2/sqrt(1+16*k^2)*cos(2*k*t-atan(4*k));
    subplot(4,1,1), plot(t,x1)
    subplot(4,1,2), plot(t,x2)
    subplot(4,1,3), plot(t,x3)
    subplot(4,1,4), plot(t,x4)
    pause
end






