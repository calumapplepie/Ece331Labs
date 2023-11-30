clear;
syms z n;
b = [1,-0.5];
a = [1,-1/2, 1/2. 2/7. -1/32];
figure(1);
dstep(b,a);
figure(2);
impulse(b,a);