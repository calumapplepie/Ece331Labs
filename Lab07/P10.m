clear
clf
a =imread('moon.tif'),
figure(1)
plot(imshow(a));
figure(2)
plot(mesh(fftshift(abs(fft2(a)))));

b =imread("cameraman.tif")
figure(2)
plot(imshow(b));
figure(2)
plot(mesh(fftshift(abs(fft2(b)))));