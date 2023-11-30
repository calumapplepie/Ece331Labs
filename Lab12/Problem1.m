clear;
y1(1) = -2;
y1(2) =  6;

y2(1) = -3;
y2(2) =  5;

y3(1) =  2;
y3(2) =  2;

for n=1:15;
    y1(n+2) = -3*y1(n+1) - 2*y1(n);
    y2(n+2) = -2*y2(n+1) - y2(n);
    y3(n+2) =  2*y3(n+1) - 2*y3(n)
end
n=0:16;
yc1 = 2*(-1).^n-4*(-2).^n;
yc2 = -(3.+2*n).*(-1).^n;
yc3 = 2*(sqrt(2)).^n.*cos(n*pi/4);

figure(1);
plot(n,y1,n,yc1);

figure(2);
plot(n,y2,n,yc2);

figure(3);
plot(n,y3,n,yc3);