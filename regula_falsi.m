aralik=[-1 2];
a=aralik(1);
b=aralik(2);
eps=1e-6;
c=0;
hata=1;
iterasyon=0;
if f(a)*f(b) > 0
    disp('Bu aralikta kok yok!');
else
    while hata>eps
        iterasyon=iterasyon+1;
        yeni_c=((a*f(b))-(b*f(a)))/(f(b)-f(a));
        hata=(abs(yeni_c-c));
        c=yeni_c;
        if f(a)*f(c) > 0
            a=c;
        else
            b=c;
        end
        fprintf('iterasyon: %d \tc : %.10f \tf(c) : %.10f \thata : %.10f \n'...
            ,iterasyon,c,f(c),hata);
    end
end