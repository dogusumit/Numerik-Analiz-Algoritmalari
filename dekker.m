aralik=[-1 2];
a=aralik(1);
b=aralik(2);
eps=1e-6;
hata=1;
k=2;
s=[-1,1];
if f(a)*f(b) > 0
    disp('Bu aralikta kok yok!');
else
    while hata>eps
        if f(s(k-1))~=f(s(k))
            s(k+1)=s(k)-(( ( s(k)-s(k-1) )/ ( f(s(k)) - f(s(k-1)) ) )*f(s(k)));
        else
            s(k+1)=(a+b)/2;
        end
        k=k+1;
        b=s(k);
        hata=(abs(s(k)-s(k-1)));
        fprintf('k: %d \tx : %.10f \tf(x) : %.10f \thata : %.10f \n'...
            ,k-2,s(k),f(s(k)),hata);
    end
end