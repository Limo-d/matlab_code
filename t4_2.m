clear all;
x0=0.6;
h=logspace(-5,0,100);
dy=df(0.6);
zweipunkte_formel=(f(x0)-f(x0-h))./h;
Dreipunkte_endpunkt_formel=1./(2*h).*(-3*f(x0)+4*f(x0+h)-f(x0+2*h));
Dreipunkte_Mittelpunkt_formel=1./(2*h).*(f(x0+h)-f(x0-h));
Fuenfpunkte_Mittelpunkt_formel=1./(12*h).*(f(x0-2*h)-8*f(x0-h)+8*f(x0+h)-f(x0+2*h));
k1=abs(dy-zweipunkte_formel);
k2=abs(dy-Dreipunkte_endpunkt_formel);
k3=abs(dy-Dreipunkte_Mittelpunkt_formel);
k4=abs(dy-Fuenfpunkte_Mittelpunkt_formel);
loglog(h,k1,'g',LineWidth=2.5);
hold on
loglog(h,k2,'m',LineWidth=2.5);
hold on
loglog(h,k3,'r',LineWidth=2.5);
hold on
loglog(h,k4,'y',LineWidth=2.5);
hold on
loglog(h,h,LineWidth=4);
hold on
loglog(h,h.^2,LineWidth=4);
hold on
loglog(h,h.^4,LineWidth=4);

function y = f(x)
y=(x./(1+x)).^5;
end

function dy =df(x)
dy=(5*x.^4)./((1+x).^6);
end