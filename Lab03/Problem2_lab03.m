clear all
clf
R = 2000; C=1e-5;
t=0:0.01:0.4;
h=1/(R*C)*exp(-t/(R*C));

k=1;
ys(1)=0;
for t=0.6:0.01:1.6-0.01
   k=k+1;
if(t>=0.8 && t<=1.1)
    x(k)=t;
else x(k)=0; end
ys(k)=(x(k)+ys(k-1)*R*C/0.01)/(1+R*C/0.01);
end
tx=0.6:0.01:1.6;

Tspan = [0.6 1.6]
IC= 0;
[T Y] = ode45(@(t,y) myode(t,y,tx,x,R,C), Tspan, IC);

figure(1)
plot(tx,x,tx,ys,T,Y,'m')

function dydt = myode(t,y,tx,x,R,C)
x=interp1(tx,x,t);
dydt= 1/(R*C)*(x-y);
end
