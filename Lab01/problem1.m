clear all
clf

for i=0:201
  x(i+1)=cos(3*pi*i/20);
  if(i>=50 & i <= 90 & ~(i>= 70 & i<= 75))
    x(i+1) = x(i+1) + 3;
  end
  if(i>=20 & i<= 40) 
      x(i+1) = x(i+1) + exp(-i/50);
  end
end
xlabel('time')
ylabel('amplitude')
plot(x)
