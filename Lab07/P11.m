clear

t=0:0.01:10;
w = -pi*100:1:pi*100
H = j*w./((j*w).^2+3*j*w+2);
X = 1./(1+j*w);
yx = -t.*exp(-t)+2*exp(-t)-2*exp(-2*t);
figure(1) 
plot(w,abs(ifft(H.*X)))
figure(2)
plot(t,abs(yx));
