clear 
clf

T1 = pi/(2*2000*pi)
T2 = pi/(2000*pi)
T3 = pi/(0.8*2000*pi)

n1 = -10/T1:1:10/T1;
n2 = -10/T2:1:10/T2;
n3 = -10/T3:1:10/T3;

x1 = cos(pi*2000*n1*T1);
x2 = cos(pi*2000*n2*T2);
x3 = cos(pi*2000*n3*T3);

f1=-1/(2*T1):1/(T1*length(n1)):1/(2*T1)-1/(T1*length(n1));
f2=-1/(2*T2):1/(T2*length(n2)):1/(2*T2)-1/(T2*length(n2));
f3=-1/(2*T3):1/(T3*length(n3)):1/(2*T3)-1/(T3*length(n3));

figure(1);

subplot(3,1,1), plot(f1,abs(fft(x1)))
subplot(3,1,2), plot(f2,abs(fft(x2)))
subplot(3,1,3), plot(f3,abs(fft(x3)))

