clear
clf

k=1; yi(1) =0;
t =-10:0.01:10
for i=t; 
	if(i>-2&&i<2) y(k)=1;
	else y(k)=0;
	end
	k = k+1;
end
yd = [diff(y),0]
step= 1/0.01;
f = -step/2:step/length(t):step/2-step/length(t);

figure(1)
subplot(2,1,1), plot(t,y);
subplot(2,1,2), plot(t,yd);
figure(2)
subplot(2,1,1), plot(f,fftshift(real(fft(y))));
subplot(2,1,2), plot(f,fftshift(real(fft(yd))));
figure(3)
subplot(2,1,1), plot(f,fftshift(angle(fft(y))));
subplot(2,1,2), plot(f,fftshift(angle(fft(yd))));
figure(4)
subplot(2,1,1), plot(f,fftshift(abs(fft(y))));
subplot(2,1,2), plot(f,fftshift(abs(fft(yd))));