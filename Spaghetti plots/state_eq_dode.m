function xd=state_eq(~,x,W)

W1=W(:,:,1);
W2=W(:,:,2);
W3=W(:,:,3);
W4=W(:,:,4);
W5=W(:,:,5);
W6=W(:,:,6);
W7=W(:,:,7);
W8=W(:,:,8);
W9=W(:,:,9);
W10=W(:,:,10);
W11=W(:,:,11);
W12=W(:,:,12);
W13=W(:,:,13);
W14=W(:,:,14);
W15=W(:,:,15);
W16=W(:,:,16);
W17=W(:,:,17);
W18=W(:,:,18);
W19=W(:,:,19);
W20=W(:,:,20);

x1=x(1:3);
x2=x(4:6);
x3=x(7:9);
x4=x(10:12);
x5=x(13:15);
x6=x(16:18);
x7=x(19:21);
x8=x(22:24);
x9=x(25:27);
x10=x(28:30);
x11=x(31:33);
x12=x(34:36);
x13=x(37:39);
x14=x(40:42);
x15=x(43:45);
x16=x(46:48);
x17=x(49:51);
x18=x(52:54);
x19=x(55:57);
x20=x(58:60);

n1=x9+x13+x17;
x1d=W1*x1+n1-x1'*n1*x1;

n2=x10+x13+x18;
x2d=W2*x2+n2-x2'*n2*x2;

n3=x11+x14+x17;
x3d=W3*x3+n3-x3'*n3*x3;

n4=x9+x15+x19;
x4d=W4*x4+n4-x4'*n4*x4;

n5=x12+x14+x18;
x5d=W5*x5+n5-x5'*n5*x5;

n6=x10+x15+x20;
x6d=W6*x6+n6-x6'*n6*x6;

n7=x11+x16+x19;
x7d=W7*x7+n7-x7'*n7*x7;

n8=x12+x16+x20;
x8d=W8*x8+n8-x8'*n8*x8;

n9=x11+x4+x1;
x9d=W9*x9+n9-x9'*n9*x9;

n10=x12+x2+x6;
x10d=W10*x10+n10-x10'*n10*x10;

n11=x3+x7+x9;
x11d=W11*x11+n11-x11'*n11*x11;

n12=x5+x8+x10;
x12d=W12*x12+n12-x12'*n12*x12;

n13=x15+x1+x2;
x13d=W13*x13+n13-x13'*n13*x13;

n14=x16+x3+x5;
x14d=W14*x14+n14-x14'*n14*x14;

n15=x4+x6+x13;
x15d=W15*x15+n15-x15'*n15*x15;

n16=x7+x8+x14;
x16d=W16*x16+n16-x16'*n16*x16;

n17=x3+x18+x1;
x17d=W17*x17+n17-x17'*n17*x17;

n18=x17+x2+x5;
x18d=W18*x18+n18-x18'*n18*x18;

n19=x4+x7+x20;
x19d=W19*x19+n19-x19'*n19*x19;

n20=x19+x6+x8;
x20d=W20*x20+n20-x20'*n20*x20;

xd=[x1d' x2d' x3d' x4d' x5d' x6d' x7d' x8d' x9d' x10d' x11d' x12d' x13d' x14d' x15d' x16d' x17d' x18d' x19d' x20d']';

end