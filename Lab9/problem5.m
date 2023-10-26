clear
syms s t;

A = 2;
a = 3;
b = 3;
B = 4;

G1 = 1/(s+a);
H1 = b^2/(s+a);
T1 = A * G1/(1+G1*H1);
G2 = 1/(s+a)^2;
H2 = b^2;
T2 = (B-a*A)*G2 / (1+G2*H2);
T = T1 + T2;
simplify(T)

%from running the above, we see
b1 = [2,4]
a1 = [1,6,18]
figure(1)
impulse(b1,a1);
figure(2)
step(b1,a1);

sys = tf(b1,a1)
figure(3)
bodemag(sys)