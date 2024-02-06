function [J,detJ,invJ] = getJacobian_1(nodes,xi,eta)
%UNTITLED9 Summary of this function goes here
%   Detailed explanation goes here
J=nodes'*linquadderiref(xi,eta);
detJ=det(J);
invJ=inv(J);
end