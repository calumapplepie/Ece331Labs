clear all
clf
H2 = [ones(1,21) zeros(1,87) ones(1,20)];
h2 = abs(ifft(H2));
k2 = 0:127;
H3 = [ones(1,41) zeros(1,175) ones(1,40)];
h3 = abs(ifft(H3));
k3 = 0:255;
figure(1)
plot(H2)
figure(2)
plot(k2,h2)
figure(3)
plot(k3,h3);