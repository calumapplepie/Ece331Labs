clear
syms s t
b = [1];

m = 2; n = 1;
a1 = [1,2*m,n]

m = 2; n= 4;
a2 = [1,2*m,n]

m = 2; n=8;
a3 = [1,2*m,n]

a = a3;

figure(1);
step(b,a);
figure(2);
impulse(b,a);