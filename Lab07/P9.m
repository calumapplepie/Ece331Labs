clear
clf

k=1; yi(1) =0;
t =-10:0.01:10
for i=t; 
	if(i>-2&&i<2) y1(k)=1;
	else y(k)=0;
	end
	if(i>-1&&i<1) y2(k)=1;
	else y(k)=0;
	end
	k = k+1;
end
yconv = conv(y1,y2);
step= 1/0.01;
fstep = step/length(t)
f     = -step/2    :fstep:step/2-fstep;
fconv = -step+fstep:fstep:step  -fstep;

figure(1)
subplot(3,1,1), plot(t,y1);
subplot(3,1,2), plot(t,y2);
subplot(3,1,3), plot(t,yconv);
figure(2)
subplot(3,1,1), plot(f,fftshift(abs(fft(y1))));
subplot(3,1,2), plot(f,fftshift(abs(fft(y2))));
subplot(3,1,2), plot(fconv,fftshift(abs(fft(yconv))));
figure(3)
subplot(2,1,1), plot(fconv,fftshift(abs(fft(yconv))));
subplot(2,1,2), plot(fconv,fftshift(abs(fft(y1))) .* fftshift(abs(fft(y2))));


