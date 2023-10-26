clear
syms s t n
a = (2*s+5)/(s^2+5*s+6);
b = (3*s+5)/(s^2+4*s+13);
d = (5)/(s^2*(s+2))
h = (s+1)/(s*(s+2)^2*(s^2)*(s^2+4*s+5))
i = (s^3)/(s+1)^2*(s^2+2*s+5)

[
    a, ilaplace(a);
    b, ilaplace(b);
    d, ilaplace(d);
    h, ilaplace(h);
    i, ilaplace(i)
]