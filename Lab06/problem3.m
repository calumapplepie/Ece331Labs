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
end



