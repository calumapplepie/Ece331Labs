clear
syms s t n
f1 = heaviside(t)
f2 = t * heaviside(t)
f3 = t^n * heaviside(t)
f4 = exp(n*t) * heaviside(t)
f5 = t*exp(n*t)*heaviside(t)
f6 = cos(n*t) *heaviside(t)
[f1, laplace(f1);
f2, laplace(f2);
f3, laplace(f3);
f4, laplace(f4);
f5, laplace(f5);
f6, laplace(f6)]

