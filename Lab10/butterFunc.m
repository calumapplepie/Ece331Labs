clear
omegac = 2*pi*1500;
[Z,P,K] = butter(5,omegac,'s')
roots([1,2*cos(pi/5)*omegac,omegac^2])
roots([1,2*cos(2*pi/5)*omegac,omegac^2])

roots([1/(i*omegac),0,0,0,0,0,0,0,0,0,1])

