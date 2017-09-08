aralik=[-1 2];
a=aralik(1);
b=aralik(2);
eps=1e-6;
hata=1;
k=1;
s=[-1,1];
mflag=true;
if f(a)*f(b) > 0
    disp('Bu aralikta kok yok!');
else
    if abs(f(a)) < abs(f(b))
        [a, b] = deal(b, a);%swap
    end
    c=a;
    while hata>eps
        if f(a) ~= f(c) && f(b) ~= f(c)
            s= (a*f(b)*f(c)/((f(a)-f(b))*(f(a)-f(c)))) + (b*f(a)*f(c)/((f(b)-f(a))*(f(b)-f(c)))) + ...
                (c*f(a)*f(b)/((f(c)-f(a))*(f(c)-f(b))));
        else
            s=b-( ( ( b-a )/ ( f(b) - f(a) ) )*f(b) );
        end
        
        if (s>b && s<(3*a+b)/4)||...
                (s<b && s>(3*a+b)/4)||...
                (mflag==true && abs(s-b) >= abs(b-c)/2)||...
                (mflag==false && abs(s-b) >= abs(c-d)/2)||...
                (mflag==true && abs(b-c) < eps)||...
                (mflag==false && abs(c-d) < eps)
            s=(a+b)/2;
            mflag=true;
        else
            mflag=false;
        end
        d=c;
        c=b;
        if f(a)*f(s)<0
            b=s;
        else
            a=s;
        end
        if abs(f(a)) < abs(f(b))
            [a, b] = deal(b, a);%swap
        end
        
        hata=(abs(a-b));
        fprintf('k: %d \tx : %.10f \tf(x) : %.10f \thata : %.10f \n'...
            ,k,s,f(s),hata);
        k=k+1;
    end
end