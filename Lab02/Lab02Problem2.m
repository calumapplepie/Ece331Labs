clear all
clf
k = 0;
t=-10:0.01:10;
for t = t
    k=k+ 1;
    if (t >= -1 && t <= 1) f(k) = t;else f(k)= 0; end    
    u = t-3;
    if (u >= -1 && u <= 1) y(k) = 2*u; g(k) = 2*t*u; 
    else y(k) =0; g(k) = 0; end
    
    td = t-1; w = td-3;
    if (w>= -1 && w<=1)
        z(k)=2*w; x(k)=2*t*w;
    else z(k) = 0; x(k) = 0; end;
end
t=-10:0.01:10;

f=@(t) t.*(t>-1&t<1);
y=@(t) 2*f(t-3);
z=@(t) 2*t.*f(t-3);

figure(1)
subplot(3,1,1),plot(t,f(t))
subplot(3,1,2),plot(t,y(t))
subplot(3,1,3),plot(t,z(t))

g=@(t) f(t-1);
y=@(t) 2*g(t-3);
z=@(t) 2*t.*g(t-3);

figure(2)
subplot(3,1,1),plot(t,g(t))
subplot(3,1,2),plot(t,y(t))
subplot(3,1,3),plot(t,z(t))