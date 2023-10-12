clear 
clf

T1 = pi/(500*pi)
T2 = pi/(1200*pi)
T3 = pi/(1200*pi)

n1 = -10/T1:1:10/T1;
n2 = -10/T2:1:10/T2;
n3 = -10/T3:1:10/T3;

x1 = sinc(500*n1*T1);
x2 = sinc(1200*n2*T2);
x3 = sinc(500*n3*T3) + sinc(1200*n3*T3);

f1=-1/(2*T1):1/(T1*length(n1)):1/(2*T1)-1/(T1*length(n1));
f2=-1/(2*T2):1/(T2*length(n2)):1/(2*T2)-1/(T2*length(n2));
f3=-1/(2*T3):1/(T3*length(n3)):1/(2*T3)-1/(T3*length(n3));

figure(1);

subplot(3,1,1), plot(f1,abs(fft(x1)))
subplot(3,1,2), plot(f2,abs(fft(x2)))
subplot(3,1,3), plot(f3,abs(fft(x3)))


T1 = pi/(2*500*pi)
T2 = pi/(2*1200*pi)
T3 = pi/(2*1200*pi)

n1 = -10/T1:1:10/T1;
n2 = -10/T2:1:10/T2;
n3 = -10/T3:1:10/T3;

x1 = sinc(500*n1*T1);
x2 = sinc(1200*n2*T2);
x3 = sinc(500*n3*T3) + sinc(1200*n3*T3);

f1=-1/(2*T1):1/(T1*length(n1)):1/(2*T1)-1/(T1*length(n1));
f2=-1/(2*T2):1/(T2*length(n2)):1/(2*T2)-1/(T2*length(n2));
f3=-1/(2*T3):1/(T3*length(n3)):1/(2*T3)-1/(T3*length(n3));

figure(2)
subplot(3,1,1), plot(f1,abs(fft(x1)))
subplot(3,1,2), plot(f2,abs(fft(x2)))
subplot(3,1,3), plot(f3,abs(fft(x3)))



T1 = pi/(.8*500*pi)
T2 = pi/(.8*1200*pi)
T3 = pi/(.8*1200*pi)

n1 = -10/T1:1:10/T1;
n2 = -10/T2:1:10/T2;
n3 = -10/T3:1:10/T3;

x1 = sinc(500*n1*T1);
x2 = sinc(1200*n2*T2);
x3 = sinc(500*n3*T3) + sinc(1200*n3*T3);

f1=-1/(2*T1):1/(T1*length(n1)):1/(2*T1)-1/(T1*length(n1));
f2=-1/(2*T2):1/(T2*length(n2)):1/(2*T2)-1/(T2*length(n2));
f3=-1/(2*T3):1/(T3*length(n3)):1/(2*T3)-1/(T3*length(n3));

figure(3)
subplot(3,1,1), plot(f1,abs(fft(x1)))
subplot(3,1,2), plot(f2,abs(fft(x2)))
subplot(3,1,3), plot(f3,abs(fft(x3)))



