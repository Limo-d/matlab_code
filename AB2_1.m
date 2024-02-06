function [LHS,RHS] = AB2_1(timestep,M,B,C,sol)
%UNTITLED11 Summary of this function goes here
%   Detailed explanation goes here
LHS=M;
RHS=(M+3/2*timestep*B(1))*sol(1)+timestep/2*(3*C(1)-B(2)*sol(2)-C(2));
end