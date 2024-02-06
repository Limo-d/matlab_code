nodes=[2,1;4,1;4,3;2,2];
n=input('n=');
gaussx=gx2dref(n);
gaussw=gw2dref(n);
s=0;
for i=1:n*n
        x(i,:)=getxPos(nodes,gaussx(i,1),gaussx(i,2));
        [J,det_J,inv_J]=getJacobian_1(nodes,gaussx(i,1),gaussx(i,2));
        N1=1/4*(1-gaussx(i,1))*(1-gaussx(i,2));
        N2=1/4*(1+gaussx(i,1))*(1-gaussx(i,2));
        s = s+N1*N2*det_J*gaussw(i);
end
disp(s);

    
