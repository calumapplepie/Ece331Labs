clear
k=0
for t=-10:0.01:10
    k=k+1
    if[t>-.5&& t<0.5] x1(k)=1; 
    else x1(k)=0 
    end
    if[t>-1 && t<1] x2(k)=1; 
    else x2(k)=0 
    end
    if[t>-2&& t<2] x3(k)=1; 
    else x3(k)=0 
    end
    if[t>-3&& t<3] x4(k)=1; 
    else x4(k)=0 
    end
    if[t>-4&& t<4] x5(k)=1; 
    else x5(k)=0 
    end
end
t=-10:0.01:10;
step =0.01;
f=-step/2:step/length(t):step/2-step/length(t)
figure (1)
subplot(5,1,1),plot(x1)
subplot(5,1,2),plot(x2)
subplot(5,1,3),plot(x3)
subplot(5,1,4),plot(x4)
subplot(5,1,5),plot(x5)
figure(2)
subplot(5,1,1),plot(f,fftshift(abs(fft(x1))))
subplot(5,1,2),plot(f,fftshift(abs(fft(x2))))
subplot(5,1,3),plot(f,fftshift(abs(fft(x3))))
subplot(5,1,4),plot(f,fftshift(abs(fft(x4))))
subplot(5,1,5),plot(f,fftshift(abs(fft(x5))))
