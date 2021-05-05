subplot(1,3,1)
hold on
sphereframe(1)

phi=(1+sqrt(5))/2;
rho=1.05/sqrt(3); % normalize vectors and make them float above sphere

x1=rho*[1 1 1]';
x2=rho*[1 1 -1]';
x3=rho*[1 -1 1]';
x4=rho*[-1 1 1]';
x5=rho*[1 -1 -1]';
x6=rho*[-1 1 -1]';
x7=rho*[-1 -1 1]';
x8=rho*[-1 -1 -1]';
x9=rho*[0 1/phi phi]';
x10=rho*[0 1/phi -phi]';
x11=rho*[0 -1/phi phi]';
x12=rho*[0 -1/phi -phi]';
x13=rho*[1/phi phi 0]';
x14=rho*[1/phi -phi 0]';
x15=rho*[-1/phi phi 0]';
x16=rho*[-1/phi -phi 0]';
x17=rho*[phi 0 1/phi]';
x18=rho*[phi 0 -1/phi]';
x19=rho*[-phi 0 1/phi]';
x20=rho*[-phi 0 -1/phi]';

X=[x1'
   x2'
   x3'
   x4'
   x5'
   x6'
   x7'
   x8'
   x9'
   x10'
   x11'
   x12'
   x13'
   x14'
   x15'
   x16'
   x17'
   x18'
   x19'
   x20'];

bubbleplot3(X(:,1),X(:,2),X(:,3),0.05*ones(size(X)),[0 0 0])

gray=[60 60 60]/255;
bubbleplot3(X(1:2,1),X(1:2,2),X(1:2,3),0.05*ones(size(X)),gray)
bubbleplot3(X(13,1),X(13,2),X(13,3),0.05*ones(size(X)),gray)
bubbleplot3(X(17,1),X(17,2),X(17,3),0.05*ones(size(X)),gray)
bubbleplot3(X(18,1),X(18,2),X(18,3),0.05*ones(size(X)),gray)

v=[x1';x9'];
plot3(v(:,1),v(:,2),v(:,3),'color',gray,'LineWidth',4)
v=[x1';x13'];
plot3(v(:,1),v(:,2),v(:,3),'color',gray,'LineWidth',4)
v=[x1';x17'];
plot3(v(:,1),v(:,2),v(:,3),'color',gray,'LineWidth',4)

v=[x2';x10'];
plot3(v(:,1),v(:,2),v(:,3),'color',gray,'LineWidth',4)
v=[x2';x13'];
plot3(v(:,1),v(:,2),v(:,3),'color',gray,'LineWidth',4)
v=[x2';x18'];
plot3(v(:,1),v(:,2),v(:,3),'color',gray,'LineWidth',4)

v=[x3';x11'];
plot3(v(:,1),v(:,2),v(:,3),'k','LineWidth',4)
v=[x3';x14'];
plot3(v(:,1),v(:,2),v(:,3),'k','LineWidth',4)
v=[x3';x17'];
plot3(v(:,1),v(:,2),v(:,3),'color',gray,'LineWidth',4)

v=[x4';x9'];
plot3(v(:,1),v(:,2),v(:,3),'k','LineWidth',4)
v=[x4';x15'];
plot3(v(:,1),v(:,2),v(:,3),'k','LineWidth',4)
v=[x4';x19'];
plot3(v(:,1),v(:,2),v(:,3),'k','LineWidth',4)

v=[x5';x12'];
plot3(v(:,1),v(:,2),v(:,3),'k','LineWidth',4)
v=[x5';x14'];
plot3(v(:,1),v(:,2),v(:,3),'k','LineWidth',4)
v=[x5';x18'];
plot3(v(:,1),v(:,2),v(:,3),'color',gray,'LineWidth',4)

v=[x6';x10'];
plot3(v(:,1),v(:,2),v(:,3),'k','LineWidth',4)
v=[x6';x15'];
plot3(v(:,1),v(:,2),v(:,3),'k','LineWidth',4)
v=[x6';x20'];
plot3(v(:,1),v(:,2),v(:,3),'k','LineWidth',4)

v=[x7';x11'];
plot3(v(:,1),v(:,2),v(:,3),'k','LineWidth',4)
v=[x7';x16'];
plot3(v(:,1),v(:,2),v(:,3),'k','LineWidth',4)
v=[x7';x19'];
plot3(v(:,1),v(:,2),v(:,3),'k','LineWidth',4)

v=[x8';x12'];
plot3(v(:,1),v(:,2),v(:,3),'k','LineWidth',4)
v=[x8';x16'];
plot3(v(:,1),v(:,2),v(:,3),'k','LineWidth',4)
v=[x8';x20'];
plot3(v(:,1),v(:,2),v(:,3),'k','LineWidth',4)

v=[x9';x11'];
plot3(v(:,1),v(:,2),v(:,3),'k','LineWidth',4)

v=[x10';x12'];
plot3(v(:,1),v(:,2),v(:,3),'k','LineWidth',4)

v=[x13';x15'];
plot3(v(:,1),v(:,2),v(:,3),'color',gray,'LineWidth',4)

v=[x14';x16'];
plot3(v(:,1),v(:,2),v(:,3),'k','LineWidth',4)

v=[x17';x18'];
plot3(v(:,1),v(:,2),v(:,3),'color',gray,'LineWidth',4)

v=[x19';x20'];
plot3(v(:,1),v(:,2),v(:,3),'k','LineWidth',4)

az=-47.9795;
el=5.4000;
view(az,el)