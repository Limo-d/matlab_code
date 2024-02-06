function val = linquadref_1(xi,eta)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
val(1,1)=1/4*(1-xi)*(1-eta);
val(2,1)=1/4*(1+xi)*(1-eta);
val(3,1)=1/4*(1+xi)*(1+eta);
val(4,1)=1/4*(1-xi)*(1+eta);
end