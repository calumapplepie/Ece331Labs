clear
clf
syms t tau
stp = (t/abs(t)+1)/2;

tx= [-5.001:0.01:10];
stpn = subs(stp, tx);
stp1=subs(stp, t-2);

y = subs(stp, t-2) - subs(stp, t-5);
yn = subs(y, tx);

f = exp(2*t)  * subs(stp, -t);
g = exp(-3*t) * stp;

yf = int(subs(f, tau)*subs(g,t-tau), tau, -inf, inf);
tx=[-10:0.1:10];
yfn= (subs(yf, tx));
plot(tx, yfn);