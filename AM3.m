function [LHS, RHS] = AM3(Timestep, M, B, C, sol)
LHS = M - 5/12 * Timestep * B(1);
RHS = (M + 2/3 * Timestep * B(2)) * sol(1) - 1/12 * Timestep * (5 * C(1) + 8 * C(2) - B(3) * sol(2) - C(3));
end