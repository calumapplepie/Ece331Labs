clear
t=0:0.01:15;
x10=0.5;
x20=1/3;
x30=0;
x40=0.504;
x50=(2/pi)^2

x1 = x10;
x2 = x20;
x3 = x30;
x4 = x40;
x5 = x50;

p1 = x10^2;
p2 = x20^2;
p3 = x30^2;
p4 = x40^2;
p5 = x50^2;

x1r = zeros(1,length(t));
for i=1:length(t);
    if (mod((t(i) + pi /2), 2*pi) < pi)
         x1r(i) = 1;
    end
end

for k=1:60
    x1c(k) = (-1)^((k-1)/2)*2/(pi*k);
    x2c(k) = (4/pi^2)*((-1)^k/(k)^2);
    x3c(k) = (2/pi)*1/k;
    x4c(k) = 0.504*2/sqrt(1+16*k^2);
    x5c(k) = 2/pi*1/(1-4*k^2);

    if rem(k,2)==1;
        x1 = x1+x1c(k)*cos(k*t);
    end
    x2 = x2+x2c(k)*(cos(k*pi*t));
    x3 = x3+x3c(k)*sin(pi*k*t);
    x4 = x4+x4c(k)*cos(2*k*t-atan(4*k));
    x5 = x5+ x5c(k)*(exp(j*2*k*t)+exp(-j*2*k*t));

    p1 = p1+1/2 * (x1c(k))^2;
    p2 = p2+1/2 * (x2c(k))^2;
    p3 = p3+1/2 * (x3c(k))^2;
    p4 = p4+1/2 * (x4c(k))^2;
    p5 = p5+1/2 * (x5c(k))^2;
    
    figure(1)
    subplot(5,1,1), plot(t,x1)
    subplot(5,1,2), plot(t,x2)
    subplot(5,1,3), plot(t,x3)
    subplot(5,1,4), plot(t,x4)
    subplot(5,1,5), plot(t,x5)

    MSE(k)=(x1r-x1)*(x1r-x1)';
end
figure(2);
plot(MSE)