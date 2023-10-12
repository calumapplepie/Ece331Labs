clear
clf

k=1; yi(1) =0;
t =-10:0.01:10
for i=t; 
	if(i>-2&&i<2) y(k)=1;
	else y(k)=0;
	end
	k = k+1;
end
Y = abs(fft(y));
Ey=y*y' 
EY = Y*Y' / length(t)
Ey == EY
