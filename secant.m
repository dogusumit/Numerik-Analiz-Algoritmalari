x=[0,1];
eps=1e-6;
hata=1;
i=2;
fprintf('i: %d \tx(%d) : %.10f \tf(x) : %.10f \thata : %.10f \n'...
    ,1,1,x(1),f(x(1)),hata);
fprintf('i: %d \tx(%d) : %.10f \tf(x) : %.10f \thata : %.10f \n'...
    ,2,2,x(2),f(x(2)),hata);
while hata>eps
    x(i+1)=x(i)-( ( f(x(i)) * (x(i) - x(i-1)) )/ (f(x(i)) - f(x(i-1))) );
    hata=(abs(x(i+1)-x(i)));
    i=i+1;
    fprintf('i: %d \tx(%d) : %.10f \tf(x) : %.10f \thata : %.10f \n'...
    ,i,i,x(i),f(x(i)),hata);
end