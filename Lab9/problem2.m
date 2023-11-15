clear
syms s t n
a = (2*s+5)/(s^2+5*s+6);
b = (3*s+5)/(s^2+4*s+13);
d = (5)/(s^2*(s+2));
h = (s+1)/(s*(s+2)^2*(s^2)*(s^2+4*s+5));
i = (s^3)/(s+1)^2*(s^2+2*s+5);

[
    a, ilaplace(a);
    b, ilaplace(b);
    d, ilaplace(d);
    h, ilaplace(h);
    i, ilaplace(i)
]

tau = 2;
omega0=1;
a = heaviside(t)-heaviside(t-1);
b = exp(-(t-tau))*heaviside(t-tau);
c = exp(-(t-tau))*heaviside(t);
d = exp(-(t))*heaviside(t-tau);
e = t*exp(-(t))*heaviside(t-tau);
f = sin(omega0*(t-tau))*heaviside(t-tau);

[
    a, ilaplace(a);
    b, ilaplace(b);
    c, ilaplace(c);
    d, ilaplace(d);
    e, ilaplace(e);
    f, ilaplace(f);
]


a = (2*s+5)*exp(-2*s)/(s^2+5*s+6);
b = (s*exp(-3*s)+2)/(s^2-2*s+5);
[
    a, ilaplace(a);
    b, ilaplace(b)
]