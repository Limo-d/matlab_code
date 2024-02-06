function x = getxPos_1(nodes,xi,eta)
%UNTITLED8 Summary of this function goes here
%   Detailed explanation goes here
x=linquadref(xi,eta)'*nodes;
end