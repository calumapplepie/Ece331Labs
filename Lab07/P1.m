clear
k=0
for t=-10:0.01:10
    k=k+1
    if[t>-.5&& t<0.5] x1(k)=1; 
    else x1(k)=0 
    end
    if[t>-1 && t<1] x2(k)=1; 
    else x2(k)=0 
    end
    if[t>-2&& t<2] x3(k)=1; 
    else x3(k)=0 
    end
end

