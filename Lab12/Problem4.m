clear;
for n=0:100
    h1(n+1) = (-2)^n*heaviside(n-1);
    x1(n+1) = exp(-n)*heaviside(n+1);

    h2(n+1) = 0.5*(-(-2)^(n+1)*heaviside(n-3)); 
    x2(n+1) = 3^(n-1)*heaviside(n+2);

    h3(n+1) = 3^n*cos(pi/3*n-0.5)*heaviside(n);
    x3(n+1) = 2^n*heaviside(n-1);
    
end

c1 = conv(x1,h1);
c2 = conv(x2,h2);
c3 = conv(x3,h3);

figure(1);
plot(c1);
figure(2);
plot(c2);
figure(3);
plot(c3);