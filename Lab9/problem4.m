clear
syms s t

b1 = [1,0,0,11,0,0,0,2]
a1 = [1,3,0, 6,0,0,1,4,8]

b2 = [1]
a2 = [1,0,0,0,0,0,0,0,0,0,0,0,1]

b3 = [1,0,-2,0,0,0,4]
a3 = [1,0,2,3,4,6]

[z1,p1,k1] = residue(b1,a1)
[z2,p2,k2] = residue(b2,a2)
[z3,p3,k3] = residue(b3,a3)

[zt1,pt1,kt1] = tf2zp(b1,a1)
[zt2,pt2,kt2] = tf2zp(b2,a2)
%[zt3,pt3,kt3] = tf2zp(b3,a3)

[bt1, at1]    = zp2tf(zt1,pt1,kt1);
[bt2, at2]    = zp2tf(zt2,pt2,kt2);
%[bt3, at3]    = zp2tf(zt3,pt3,kt3);

H1 = tf(bt1, at1)
H2 = tf(bt2, at2)
H3 = tf(b3,  a3)
