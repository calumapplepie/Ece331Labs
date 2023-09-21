clear all
clf
R = 2000; C=1e-5;
t=0:0.01:0.4;
h=1/(R*C)*exp(-t/(R*C));

k=1;
x(1) = 1;
hs(1)= 1/(R*C);
for t=0:0.01:0.4-0.01
    k=k+1;
    x(k) = 0;
    hs(k) = (x(k)+R*C*hs(k-1)/0.01)/(1+R*C/0.01);
end
t=0:0.01:0.4;

figure(1)
plot(t,h,t,hs,'r')