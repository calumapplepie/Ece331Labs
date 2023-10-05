clear
clear sound
n = 1:44100;
f=440 * [1, 9/8, 5/4, 4/3, 3/2, 5/3, 15/8, 2];
y=[];
for k=1:8
    y=[y,cos(2*(pi*f(k)*n/44100))];
end
soundsc(y,44100);