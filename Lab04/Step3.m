clear; clf;
k =0;
for t = 0:0.01:10
    k=k+1;
    y(k) = -0.3*exp(-2*t)+0.4*exp(-t)+2*(exp(-t)-exp(-2*t)-t*exp(-t));
end

tx=0:0.01:10;
plot(tx,y)

L=1; R=3; C=1/2