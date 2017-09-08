eps=1e-6;
hata=1;
r =0;% input('bir r degeri girin : ');
iterasyon=0;
while hata>eps
    [y, y_turev]=f(r);
    if y_turev==0
        r = input('turev sifir oldu, yeni bir r degeri girin : ');
    else
        yeni_r=r-(y/y_turev);
        iterasyon=iterasyon+1;
        hata=abs(yeni_r-r);
        fprintf('iterasyon: %d \tr : %.10f \tf(x) : %.10f \tf''(x): %.10f \thata : %.10f \n'...
            ,iterasyon,r,y,y_turev,hata);
        r=yeni_r;
    end
end
