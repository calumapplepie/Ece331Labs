clear;
h1(1)=0;
h1(2)=1;

h2(1)=1;
h2(2)=1;

h3(1)=0;
h3(2)=0;

nmax = 20;
for n=1:nmax
    h1(n+2) = -h1(n);
    h2(n+2) = h2(n+1)-0.25*h2(n);
    h3(n+2) = h3(n+1)/6+h3(n)/6+(n==1)/3;
end
hc1(1)=0; 
hc3(1)=-2+4/5+6/5;
n=1:nmax+1;
hc1=[hc1(1),-0.5*cos(pi*n/2)+sin(pi*n/2)];
hc3=[hc3(1),4/5*(1/2).^n+6/5*(-1/3).^n ];
n=0:nmax+1;
hc2 = [(1.+n).*(1/2).^n];

figure(1);
plot(n,hc1,n,h1)

figure(2);
plot(n,hc2,n,h2)

figure(3);
plot(n,hc2,n,h2)