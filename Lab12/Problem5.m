clear;
n = 0:10000;
halflen = floor(length(n)/2);
x = [zeros(1,halflen),0,1,2,3,4,5,zeros(1,halflen-6)];
h = [ones(1,halflen),zeros(1,halflen)];
plot(conv(x,h));