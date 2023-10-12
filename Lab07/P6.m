clear
clf
k=0

for t=-10:0.01:10;
    k=k+1;


if[t>-2&& t<2] x3(k)=1; 
    else x3(k)=0;
        
end
u=3*t-2;
if (u>=-2 && u<=2)g(k)=1;
else g(k)=0;
end
end
t=-10:0.01:10;

figure (1)
step =1/0.01;
f=-step/2:step/length(t):step/2-step/length(t);
subplot(2,1,1),plot(x3)
subplot(2,1,2),plot(g)
figure(2)
subplot(2,1,1), plot(f,fftshift(abs(fft(x3))));
subplot(2,1,2), plot(f,fftshift(abs(fft(g))));
