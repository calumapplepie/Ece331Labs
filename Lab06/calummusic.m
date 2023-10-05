clear
clf
[A]  = calumnote(  1,49);
[B]  = calumnote(  1,51);
[C]  = calumnote(  1,40);
[Cp] = calumnote( .5,40);
[D]  = calumnote(  1,42);
[Dp] = calumnote( .5,42);
[Dpp]= calumnote(.25,42);
[E]  = calumnote(  1,44);
[Epp]= calumnote(.25,44);
[F]  = calumnote(  1,45);
[Fpp]= calumnote(.25,45);
[G]  = calumnote(  1,47);
[Gp] = calumnote( .5,47);
[Gpp]= calumnote(.25,47);


y= [C C G G A A Gp F F E E D D Cp G G F F E E Dp G G F F E Epp Fpp D C C G G A A Gp	F F E E D Dpp Epp Cp];
soundsc(y,44100);
