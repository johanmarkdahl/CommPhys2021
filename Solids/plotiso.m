subplot(1,3,2)
hold on
sphereframe(1)

phi=(1+sqrt(5))/2;
rho=1.05/sqrt(1+phi^2); % normalize vectors and make them float above sphere

x1=rho*[0,1,phi];
x2=rho*[0,-1,phi];
x3=rho*[0,1,-phi];
x4=rho*[0,-1,-phi];
x5=rho*[1,phi,0];
x6=rho*[-1,phi,0];
x7=rho*[1,-phi,0];
x8=rho*[-1,-phi,0];
x9=rho*[phi,0,1];
x10=rho*[-phi,0,1];
x11=rho*[phi,0,-1];
x12=rho*[-phi,0,-1];

X=[x1
   x2
   x3
   x4
   x5
   x6
   x7
   x8
   x9
   x10
   x11
   x12];

bubbleplot3(X(:,1),X(:,2),X(:,3),0.05*ones(size(X)),[0 0 0])

gray=[60 60 60]/255;

bubbleplot3(X(3,1),X(3,2),X(3,3),0.05*ones(size(X)),gray)
bubbleplot3(X(5,1),X(5,2),X(5,3),0.05*ones(size(X)),gray)
bubbleplot3(X(9,1),X(9,2),X(9,3),0.05*ones(size(X)),gray)
bubbleplot3(X(11,1),X(11,2),X(11,3),0.05*ones(size(X)),gray)

v=[x1;x2];
plot3(v(:,1),v(:,2),v(:,3),'color','k','LineWidth',4)
v=[x1;x5];
plot3(v(:,1),v(:,2),v(:,3),'color',gray,'LineWidth',4)
v=[x1;x6];
plot3(v(:,1),v(:,2),v(:,3),'color','k','LineWidth',4)
v=[x1;x9];
plot3(v(:,1),v(:,2),v(:,3),'color',gray,'LineWidth',4)
v=[x1;x10];
plot3(v(:,1),v(:,2),v(:,3),'color','k','LineWidth',4)

v=[x2;x7];
plot3(v(:,1),v(:,2),v(:,3),'color','k','LineWidth',4)
v=[x2;x8];
plot3(v(:,1),v(:,2),v(:,3),'color','k','LineWidth',4)
v=[x2;x9];
plot3(v(:,1),v(:,2),v(:,3),'color',gray,'LineWidth',4)
v=[x2;x10];
plot3(v(:,1),v(:,2),v(:,3),'color','k','LineWidth',4)

v=[x3;x5];
plot3(v(:,1),v(:,2),v(:,3),'color',gray,'LineWidth',4)
v=[x3;x6];
plot3(v(:,1),v(:,2),v(:,3),'color',gray,'LineWidth',4)
v=[x3;x12];
plot3(v(:,1),v(:,2),v(:,3),'color',gray,'LineWidth',4)
v=[x3;x11];
plot3(v(:,1),v(:,2),v(:,3),'color',gray,'LineWidth',4)
v=[x3;x4];
plot3(v(:,1),v(:,2),v(:,3),'color',gray,'LineWidth',4)

v=[x4;x7];
plot3(v(:,1),v(:,2),v(:,3),'k','LineWidth',4)
v=[x4;x8];
plot3(v(:,1),v(:,2),v(:,3),'k','LineWidth',4)
v=[x4;x11];
plot3(v(:,1),v(:,2),v(:,3),'k','LineWidth',4)
v=[x4;x12];
plot3(v(:,1),v(:,2),v(:,3),'k','LineWidth',4)

v=[x5;x6];
plot3(v(:,1),v(:,2),v(:,3),'color',gray,'LineWidth',4)
v=[x5;x11];
plot3(v(:,1),v(:,2),v(:,3),'color',gray,'LineWidth',4)
v=[x5;x9];
plot3(v(:,1),v(:,2),v(:,3),'color',gray,'LineWidth',4)

v=[x6;x10];
plot3(v(:,1),v(:,2),v(:,3),'k','LineWidth',4)
v=[x6;x12];
plot3(v(:,1),v(:,2),v(:,3),'k','LineWidth',4)

v=[x7;x11];
plot3(v(:,1),v(:,2),v(:,3),'color',gray,'LineWidth',4)
v=[x7;x9];
plot3(v(:,1),v(:,2),v(:,3),'color',gray,'LineWidth',4)
v=[x7;x8];
plot3(v(:,1),v(:,2),v(:,3),'k','LineWidth',4)

v=[x8;x10];
plot3(v(:,1),v(:,2),v(:,3),'k','LineWidth',4)
v=[x8;x12];
plot3(v(:,1),v(:,2),v(:,3),'k','LineWidth',4)

v=[x9;x11];
plot3(v(:,1),v(:,2),v(:,3),'color',gray,'LineWidth',4)

v=[x10;x12];
plot3(v(:,1),v(:,2),v(:,3),'k','LineWidth',4)

az=-47.9795;
el=5.4000;
view(az,el)