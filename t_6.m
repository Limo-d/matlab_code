clear all;
t=0:0.1:2;
timestep1=0.1;
timestep2=0.2;
timestep3=0.4;
M=1;
C=t.^2.*exp(-5.*t);
B=[-6,-6,-6];
theta1=0;
theta2=1;
theta3=0.5;
P_vor=[];
P_ruk=[];
P_tra=[];
P_vor(1)=0.0;
P_ruk(1)=0.0;
P_tra(1)=0.0;
for i=1:2/timestep1
[L1,R1]=OST(theta1,timestep1,M,B,C(1,i:i+1),P_vor(i));
P_vor(i+1)=L1\R1;
end
for i=1:2/timestep1
    [L2,R2]=OST(theta2,timestep1,M,B,C(1,i:i+1),P_ruk(i));
    P_ruk(i+1)=L2\R2;
end
for i=1:2/timestep1
    [L3,R3]=OST(theta3,timestep1,M,B,C(1,i:i+1),P_tra(i));
    P_tra(i+1)=L3\R3;
end

