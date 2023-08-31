clear all
clf
for i = 1:50
    for j=1:50
        A(i,j) = 1/abs(i-j);
        if(i==j) 
            A(i,j) = 0;
        end

    end
end

figure(1)
mesh(A)
figure(2)
contour(A)
figure(3)
plot(abs(fft2(A)))

inv(A)
det(A)
[x,y] = eig(A);

