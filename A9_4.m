clear;
clc;

%%
fai = [10.0, 6.0, 5.1, 5.01, 5.001, 5.00001, 5.0000001, 5.000000001, 5.00000000001];
v = fai(1, 1) * ones(1, 300);
a = -2 * ones(1, 299);
A1 = diag(v);
A2 = diag(a, -1);
A3 = diag(a, 1);
A = A1 + A2 + A3;
A(1, 1) = 1;
b = ones(300, 1);
t=[];
tic
x_1 = solveGauss(A, b);
t(1)=toc;
tic
x_2 = solveG(A, b ,zeros(size(b)), 1e-7, 1000);
t(2)=toc;
tic
x_3 = solveCG(A, b ,zeros(size(b)), 1e-7, 1000);
t(3)=toc;