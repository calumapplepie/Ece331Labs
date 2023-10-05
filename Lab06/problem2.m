clear
clear sound
clf

mySound = [dialTone(6), dialTone(1), dialTone(0), dialTone(3), dialTone(3), dialTone(0), dialTone(5), dialTone(4), dialTone(1), dialTone(4)];
soundsc(mySound, 44100);
toneToPlot = dialTone(5)
toneToPlot = toneToPlot(1:length(toneToPlot)/2)
x= -22050:44100/length(dialTone(2)):22049;
plot(x,fftshift(abs(fft(dialTone(8)))));

function [note] = dialTone(n)
freq1 = [1209, 1336, 1477];
freq2 = [697, 770, 852, 941];
tdex  = mod((n-1),3)+1;
sdex  = floor((n-1)/3) + 1;
if(n==0) 
    tdex = 2; 
    sdex = 4; 
end
n = 1:44100*0.04;
note = cos(2*pi*n*freq1(tdex)/44100) + cos(2*pi*n*freq2(sdex)/44100);
note = [note, zeros(1,44100*0.04)];
end
