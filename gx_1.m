function gaussx = gx(n)
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here
if n==1
    gaussx=0;
elseif n==2
    gaussx = [-1/sqrt(3),1/sqrt(3)];
elseif n==3
    gaussx = [-sqrt(3/5),0,sqrt(3/5)];
else
    disp('false');
end