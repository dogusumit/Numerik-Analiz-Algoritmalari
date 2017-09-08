eps=1e-6;
hata=1;
i=1;
x=[-1 0 1];

while hata>eps
    h1=x(2)-x(1);
    h2=x(3)-x(2);
    s1=( f(x(2)) - f(x(1)) )/h1;
    s2=( f(x(3)) - f(x(2)) )/h2;
    d=(s2-s1)/(h2+h1);
    b=s2+h2*d;
    D=sqrt(b^2-(4*f(x(3))*d));
    
    if abs(b-D)<abs(b+d)
        E=b+D;
    else
        E=b-D;
    end
    h=-2*f(x(3))/E;
    p=x(3)+h;
    
    hata=abs(h);
    fprintf('i: %d \tx : %.10f \tf(x) : %.10f \thata : %.10f \n'...
        ,i,p,f(p),hata);
    i=i+1;
    x(1)=x(2);
    x(2)=x(3);
    x(3)=p;
end