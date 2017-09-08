syms x;
syms y;
f(x)=(x^2)-4;
g(x)= x+(x^2)-4;
a=(g(x)-g(y))/(x-y);
eps=1e-6;
hata=1;
X(1)=double(subs(g,x,6));
X(2)=double(subs(g,x,X(1)));
A=double(subs(a,[x,y],[6,X(1)]));
Q=A/(A-1);
X_ussu=(Q*X(1))+((1-Q)*X(2));
i=3;
while hata>eps
    X(i)=double(subs(g,x,X_ussu));
    A=double(subs(a,[x,y],[X_ussu,X(i-2)]));
    Q=A/(A-1);
    X_ussu=(Q*X_ussu)+((1-Q)*X(i));
    hata=abs(X(i)-X(i-1));
    fprintf('i: %d \tX(%d) : %.10f \tf(x) : %.10f \thata : %.10f \n'...
        ,i-2,i-2,X(i),double(subs(f,x,X(i))),hata);
    i=i+1;
end