clear
clf
%a =imread('moon.tif'),
%figure(1)
%imshow(a));
%figure(2)
%(mesh(fftshift(abs(fft2(a)))));

b =randn(300,400);
figure(3)
imshow(b);
figure(4)
mesh(fftshift(abs(fft2(b))));