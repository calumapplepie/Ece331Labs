clear
wc=2*pi*1500;
%%%%%%%%% first order circuit
C=1e-9;
R1=1/(C*wc) % needed R1 value
R2= 1000;
R3= 1000;
%%%%%%%%%%%%%%%second order circuit 2 Sallen Key circuit
wc=2*pi*1500;
C21=1*1e-9; %C2 for first circuit
C11=47*1e-9;% C1 for first circuit
b=1/(C11*C21*wc^2);
a=2*cos(pi/5)/(C21*wc);
R=roots([1,-a,b]);
R11=R(1)% R1 for first Sallen Key circuit
R21=R(2)% R2 for first Sallen Key circuit
%%%%%%%%%%%second order circuit 3; another Sallen Key circuit
C22=1*1e-9; %C2 for second circuit
C12=47*1e-9;%C1 for second circuit
c=2*cos(2*pi/5)/(C22*wc);
d=1/(C12*C22*wc^2);
R=roots([1,-c,d]);
R12=R(1) % R1 for second Sallen Key circuit
R22=R(2) % R2 for second Sallen Key circuit
%%%%%%%%%%%%%%%%%%%%%%%%%filter simulation similar to pspice
% this is equations 1 and 2 (repeated twice). All multiplied together
w=0:0.01:2*pi*3000;
H1=1./(1+C*R1*1j*w);
H2=1./((1j*w).^2*C11*C21*R11*R21+1j*w*(C21*(R21+R11))+1);
H3=1./((1j*w).^2*C12*C22*R12*R22+1j*w*(C22*(R22+R12))+1);
figure(1)
plot(w/(2*pi),abs(H1.*H2.*H3))
figure(2)
plot(w/(2*pi),abs(H1))