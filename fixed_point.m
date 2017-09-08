syms x;
f = x^4-x-10;
g = (x+10)^(1/4);
eps=1e-6;
hata=1;
i=1;
y=0;
while hata>eps
    y(i+1)=double(subs(g,x,y(i)));
    hata=(abs(y(i+1)-y(i)));
    fprintf('i: %d \tx : %.10f \tf(x) : %.10f \thata : %.10f \n'...
        ,i,y(i),double(subs(f,x,y(i))),hata);
    i=i+1;
end