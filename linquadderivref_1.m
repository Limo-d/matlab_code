function deriv = linquadderivref_1(xi,eta)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
deriv(1,1)= -1/4*(1-eta);
deriv(1,2)= -1/4*(1-xi);
deriv(2,1)= 1/4*(1-eta);
deriv(2,2)= -1/4*(1+xi);
deriv(3,1)= 1/4*(1+eta);
deriv(3,2)= 1/4*(1+xi);
deriv(4,1)= -1/4*(1+eta);
deriv(4,2)=  1/4*(1-xi);
end