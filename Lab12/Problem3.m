clear;
[x, Fs] = audioread("Problem3Audio.m4a");
f = 0:Fs/2/length(x):Fs/2-Fs/2/length(x);
w = 2*pi*f/(Fs/2);
H = (exp(1j.*w)-0.5)./(exp(1j.*4*w)-0.5.*exp(1j.*3*w)+0.5.*exp(1j.*2*w)+2/7.*exp(1j.*w)-1/32);

y(1) = 0;
y(2) = 0;
y(3) = 0;
y(4) = 0;
for n = 1:length(x)-4
    y(n+4) = x(n+1) - 0.5*x(n) + 0.5*y(n+3) - 0.5 * y(n+2) - 2/7*y(n+1) + 1/32*y(n);
end

soundsc([x',zeros(1,Fs),y], Fs);
inputSig = abs(fft(y)/max(abs(fft(y))));
plot(f,inputSig,f,abs(H)/max(abs(H)), f, abs(fft(x))/max(abs(fft(x))));