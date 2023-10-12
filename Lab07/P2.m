clear
clf

t = -10:0.0001:10;
x1 = sinc(500*t);
x2 = sinc(1200*t);
x3 = x1+x2;
step = 1/0.0001;
f = -step/2:step/length(t):step/2-step/length(t);
subplot(3,1,1), plot(f,fftshift(abs(fft(x1))));
subplot(3,1,2), plot(f,fftshift(abs(fft(x2))));
subplot(3,1,3), plot(f,fftshift(abs(fft(x3))));
