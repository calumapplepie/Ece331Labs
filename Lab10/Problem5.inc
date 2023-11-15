.MODEL CMOSN NMOS (
+ LEVEL=1 tox=2.28E-8
+ UO=650 lambda=0.00005 gamma=0.5 vto=1 phi=0.7
+ ld=0.001e-6 js=1e-6 cj=0.3e-3 mj=0.5 cjsw=0.3e-9
+ mjsw=0.5 pb=1 cgbo=0.1e-9 cgdo=0.525e-9 cgso=0.525e-9)
*

.subckt LED anode cathode
d1 anode c1 d1n4148
d2 c1 c2 d1n4148
d3 c2 cathode d1n4148
.ends LED

.model D1N4148  D(Is=2.682n N=1.836 Rs=.5664 Ikf=44.17m Xti=3 Eg=1.11 Cjo=4p
+               M=.3333 Vj=.5 Fc=.5 Isr=1.565n Nr=2 Bv=100 Ibv=100u Tt=11.54n)
