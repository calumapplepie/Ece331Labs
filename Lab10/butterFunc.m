clear
omegac = 2*pi*1500;
[Z,P,K] = butter(5,omegac,'s')
rt1 = roots([1,2*cos(pi/5)*omegac,omegac^2])
rt2 = roots([1,2*cos(2*pi/5)*omegac,omegac^2])

rt3 = roots([1/(i*omegac)^10,0,0,0,0,0,0,0,0,0,1])

