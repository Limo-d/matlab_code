clear all;
x0=0.6;
h=0.1;
zweipunkte_formel=(f(x0)-f(x0-h))./h;
Dreipunkte_endpunkt_formel=1./(2*h)*(-3*f(x0)+4*f(x0+h)-f(x0+2*h));
Dreipunkte_Mittelpunkt_formel=1./(2*h)*(f(x0+h)-f(x0-h));
Fuenfpunkte_Mittelpunkt_formel=1./(12*h)*(f(x0-2*h)-8*f(x0-h)+8*f(x0+h)-f(x0+2*h));

function y = f(x)
y=(x./(1+x)).^5;
end

