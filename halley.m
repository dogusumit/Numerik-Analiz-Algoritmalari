x=0;
eps=1e-6;
hata=1;
i=1;
while hata>eps
    fprintf('i: %d \tx(%d) : %.10f \tf(x) : %.10f \thata : %.10f \n'...
    ,i,i,x(i),f(x(i)),hata);
    [y,y_,y__]=f(x(i));
    x(i+1)=x(i)-( (2*y*y_)/( (2*y_^2)- (y*y__) ) );
    hata=(abs(x(i+1)-x(i)));
    i=i+1;
end