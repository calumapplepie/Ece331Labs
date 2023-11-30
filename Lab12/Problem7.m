clear;
syms z n;
st0 = heaviside(n  )+0.5*heaviside(n  );
st1 = heaviside(n-1)+0.5*heaviside(n-1);
st2 = heaviside(n-2)+0.5*heaviside(n-2);

a = st0-st2;
c = 2^(n+1)*st1+exp(n-1)*st0;
d = (2^n*cos(pi/3*n))*st1;
g = (-1)^n*n*st0;

ztrans(a); ztrans(b); ztrans(c); ztrans(d);

a = (z*(z-4))/(z^2-5z+6);
b = (z-4)/(z^2-5z+6);
c = (exp(-2)-2)*z/((z-exp(-2))*(z-2));
d = (z-1)^2/z^3;

iztrans(a); iztrans(b); iztrans(c); iztrans(d);
