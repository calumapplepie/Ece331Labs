clear; clf;
k= 0; 
for t=-10:0.01:10
    k=k+1;
    if(t>4 && t<6)f(k) = 2; else f(k)= 0; end
    if(t>-5&& t<-4) g(k)=5; else g(k)=0; end
    if(t>-3&& t<0) h(k)=5; else h(k)=0; end
    if(t>0) i(k)=exp(-t); else i(k)=0; end
end

txx = -20:0.01:20;
figure(1);
plot(txx, conv(f,g))
figure(2);
plot(txx, conv(h,i))
 
