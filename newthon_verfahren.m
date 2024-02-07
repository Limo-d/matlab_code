function Nullstelle = newthon_verfahren(x0,toleranz)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
syms x;
f=x^3+power(3,x);
diff_x=diff(f);
fx=subs(f,x,x0);
while abs(fx) > toleranz
        fx=subs(f,x,x0);
        diffx=subs(diff_x,x,x0);
        x_next = x0 - fx / diffx;
        x0 = x_next;
end
    Nullstelle = x0;
end