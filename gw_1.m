function gaussw = gw(n)
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here
if n==1
    gaussw=2;
elseif n==2
    gaussw=[1.0,1.0];
elseif n==3
    gaussw=[5/9,8/9,5/9];
else
    diso('false');
end