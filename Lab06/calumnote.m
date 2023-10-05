function [note] = calumnote(duration, keynumber)
numPoints=44100*duration;
fundamentalFreq=27.5*2^((keynumber -1)/12);
h_piano=  [1,	0.04, 0.99,	0.12, 0.53, 0.11, 0.26, 0.05, 0.24, 0.07, 0.02, 0.03, 0.02, 0.03];
h_violin = [10^-7.2,10^-7, 10^-8, 10^-9, 10^-7.5, 10^-7.6, 10^-8.5, 10^-8.1,10^-8.5, 10^-8.75, 10^-8.86, 10^-9.4, 10^-8.8, 10^-10.2, 10^-9.75, 10^-9.8, 10^-11, 10^-11.2, 10^-11,0, 10^-10.99,10^-11.7, 10^-11.2 ];
h = h_violin;
h = h ./ max(h)
t=1:numPoints;
note=0;
for n=1:length(h)
    omega0=2*pi*fundamentalFreq/44100;
    note=note+h(n)*cos(n*omega0*t);
end

N1=ceil(numPoints/3);
N2=ceil(numPoints/5*3);
tv = [0.99, 0.5, 0.25];
G=   [0.005, 0.004, 0.00075];
e = zeros(1,numPoints);
for n=2:N1
    e(n) = tv(1) *G(1)+(1-G(1))*e(n-1);
end
for n=N1+1:N2
    e(n) = tv(2) *G(2)+(1-G(2))*e(n-1);
end
for n=N2+1:numPoints
    e(n) = tv(3) *G(3)+(1-G(3))*e(n-1);
end
note =note .* e;

end