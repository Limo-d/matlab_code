clear all;
a=0.0;
b=4.0;
Im=(b-a)*f((a+b)/2);
It=(b-a)*(f(a)+f(b))/2;

Ig1=(b-a)./2.*sum(gw_1(1).*(f((b-a)./2.*gx_1(1)+(a+b)./2)));
Ig2=(b-a)./2.*sum(gw_1(2).*(f((b-a)./2.*gx_1(2)+(a+b)./2)));
Ig3=(b-a)./2.*sum(gw_1(3).*(f((b-a)./2.*gx_1(3)+(a+b)./2)));

I_ex=0.556543771162832;
d1=abs(Ig1-I_ex)
d2=abs(Ig2-I_ex)
d3=abs(Ig3-I_ex)
function y=f(x)
y=(x./(1+x)).^5;
end