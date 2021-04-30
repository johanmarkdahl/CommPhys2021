function xd=state_eq(~,x)

x1=x(1:2);
x2=x(3:4);
x3=x(5:6);
x4=x(7:8);
x5=x(9:10);
x6=x(11:12);
x7=x(13:14);
x8=x(15:16);
x9=x(17:18);
x0=x(19:20);

n1=x0+x2;
x1d=n1-x1'*n1*x1;
n2=x1+x3;
x2d=n2-x2'*n2*x2;
n3=x2+x4;
x3d=n3-x3'*n3*x3;
n4=x3+x5;
x4d=n4-x4'*n4*x4;
n5=x4+x6;
x5d=n5-x5'*n5*x5;
n6=x7+x5;
x6d=n6-x6'*n6*x6;
n7=x6+x8;
x7d=n7-x7'*n7*x7;
n8=x7+x9;
x8d=n8-x8'*n8*x8;
n9=x8+x0;
x9d=n9-x9'*n9*x9;
n0=x9+x1;
x0d=n0-x0'*n0*x0;

xd=[x1d' x2d' x3d' x4d' x5d' x6d' x7d' x8d' x9d' x0d']';

end