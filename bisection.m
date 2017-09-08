aralik=[-1 2];
dongu=20;
a=aralik(1);
b=aralik(2);
if f(a)*f(b) > 0
    disp('Bu aralikta kok yok!');
else
    m=zeros(1,dongu);
    for i=1:dongu
        m(i)=(a+b)/2;
        if f(a)*f(m(i)) > 0
            a=m(i);
        else
            b=m(i);
        end
        fprintf('iterasyon: %d \tc : %.10f \tf(c) : %.10f\n'...
            ,i,m(i),f(m(i)));
    end
end
