h(0)=1
h(1)=2 % this is h(0) =0 (check, replace y by h and x by delta)
h(2)=4(1)+0.5  % h(1)=1 (check)
for n=1:1000
    h(n+2)=-h(n): 
end
hc(1)=0; 
n=1:16;
hc=[hc(1),-0.5*cos(pi*n/2)+sin(pi*n/2)];
n=0:16;
plot(n,hc,n,h)