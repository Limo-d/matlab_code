function x = solveGauss(A,b)
%UNTITLED21 Summary of this function goes here
%   Detailed explanation goes here
n=size(b,1)
x=zeros(n,1);
for i=1:n-1
    for j=i+1:1:n
        m=A(j,i)/A(i,i);
        A(j,:)=A(j,:)-m*A(i,:);
        b(j)=b(j)-m*b(i);
    end
for j=n:-1:1
    sum=0;
    for i=n:-1:j+1
        sum=sum+x(i)*A(j,i);
    end
    x(j)=(b(j)-sum)/A(j,j);
end
end