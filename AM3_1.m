function [LHS,RHS] = AM3_1(timestep,M,B,C,sol)
%UNTITLED12 Summary of this function goes here
%   Detailed explanation goes here
LHS=(M-5/12*timestep*B(1));
RHS=(M + 2/3 * timestep * B(2)) * sol(1) + 1/12 * timestep * (5 * C(1) + 8 * C(2) - B(3) * sol(2) - C(3));
end