clear
clf

t = -10:0.0001:10;
x1 = sinc(500*t);
x2 = sinc(500*(t-2));
x3 = x1+x2;
step = 1/0.0001;
f = -step/2:step/length(t):step/2-step/length(t);
figure(1)
subplot(3,1,1), plot(t,x1)
subplot(3,1,2), plot(t,x2)
subplot(3,1,3), plot(t,x3)
figure(2)
subplot(3,1,1), plot(f,fftshift(abs(fft(x1))));
subplot(3,1,2), plot(f,fftshift(abs(fft(x2))));
subplot(3,1,3), plot(f,fftshift(abs(fft(x3))));