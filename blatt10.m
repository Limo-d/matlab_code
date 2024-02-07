%blatt10
clear all;
x0=0.0;
toleranz=1e-12;
Nullstelle=newthon_verfahren(x0,toleranz);
disp(eval(Nullstelle))