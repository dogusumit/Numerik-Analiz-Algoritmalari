function [y1, y2, y3]=f(a)
syms x;
f = 7*x^2+3*x-17;
f_turev = diff(f,x);
f_2_turev = diff(f_turev,x);
y1=double(subs(f,x,a));
y2=double(subs(f_turev,x,a));
y3=double(subs(f_2_turev,x,a));
end
