rng(4)
tspan=[0 3];

theta=2*pi/10;
R=[cos(theta) -sin(theta)
   sin(theta)   cos(theta)];
x10=[1 0]';
x20=R*x10;
x30=R*x20;
x40=R*x30;
x50=R*x40;
x60=R*x50;
x70=R*x60;
x80=R*x70;
x90=R*x80;
x00=R*x90;

myeps=0.5;
P1=expm(myeps*randn*[0 -1;1 0]);
P2=expm(myeps*randn*[0 -1;1 0]);
P3=expm(myeps*randn*[0 -1;1 0]);
P4=expm(myeps*randn*[0 -1;1 0]);
P5=expm(myeps*randn*[0 -1;1 0]);
P6=expm(myeps*randn*[0 -1;1 0]);
P7=expm(myeps*randn*[0 -1;1 0]);
P8=expm(myeps*randn*[0 -1;1 0]);
P9=expm(myeps*randn*[0 -1;1 0]);
P0=expm(myeps*randn*[0 -1;1 0]);

x1=P1*x10;
x2=P2*x20;
x3=P3*x30;
x4=P4*x40;
x5=P5*x50;
x6=P6*x60;
x7=P7*x70;
x8=P8*x80;
x9=P9*x90;
x0=P0*x00;

Xin=[x1' x2' x3' x4' x5' x6' x7' x8' x9' x0']';

[Tout,Xout]=ode45(@(t,x)state_eq_cycle(t,x),tspan,Xin);

X1=Xout(:,1:2);
X2=Xout(:,3:4);
X3=Xout(:,5:6);
X4=Xout(:,7:8);
X5=Xout(:,9:10);
X6=Xout(:,11:12);
X7=Xout(:,13:14);
X8=Xout(:,15:16);
X9=Xout(:,17:18);
X0=Xout(:,19:20);

hold on
axis equal
axis([- 1 1 -1 1])

figure(1)

hold on
axis([-1 1 0 tspan(2) -1 1])

c=lines(10);
plot3(X1(:,1),Tout,X1(:,2),'LineWidth',5,'Color',c(1,:))
bubbleplot3(X1(1,1),Tout(1),X1(1,2),0.05,c(1,:))
bubbleplot3(X1(end,1),Tout(end),X1(end,2),0.07,c(1,:))

plot3(X2(:,1),Tout,X2(:,2),'LineWidth',4,'Color',c(2,:))
bubbleplot3(X2(1,1),Tout(1),X2(1,2),0.05,c(2,:))
bubbleplot3(X2(end,1),Tout(end),X2(end,2),0.07,c(2,:))

plot3(X3(:,1),Tout,X3(:,2),'LineWidth',4,'Color',c(3,:))
bubbleplot3(X3(1,1),Tout(1),X3(1,2),0.05,c(3,:))
bubbleplot3(X3(end,1),Tout(end),X3(end,2),0.07,c(3,:))

plot3(X4(:,1),Tout,X4(:,2),'LineWidth',4,'Color',c(4,:))
bubbleplot3(X4(1,1),Tout(1),X4(1,2),0.05,c(4,:))
bubbleplot3(X4(end,1),Tout(end),X4(end,2),0.07,c(4,:))

plot3(X5(:,1),Tout,X5(:,2),'LineWidth',4,'Color',c(5,:))
bubbleplot3(X5(1,1),Tout(1),X5(1,2),0.05,c(5,:))
bubbleplot3(X5(end,1),Tout(end),X5(end,2),0.06,c(5,:))

plot3(X6(:,1),Tout,X6(:,2),'LineWidth',3,'Color',c(6,:))
bubbleplot3(X6(1,1),Tout(1),X6(1,2),0.05,c(6,:))
bubbleplot3(X6(end,1),Tout(end),X6(end,2),0.06,c(6,:))

plot3(X7(:,1),Tout,X7(:,2),'LineWidth',3,'Color',c(7,:))
bubbleplot3(X7(1,1),Tout(1),X7(1,2),0.05,c(7,:))
bubbleplot3(X7(end,1),Tout(end),X7(end,2),0.06,c(7,:))

plot3(X8(:,1),Tout,X8(:,2),'LineWidth',3,'Color',c(8,:))
bubbleplot3(X8(1,1),Tout(1),X8(1,2),0.05,c(8,:))
bubbleplot3(X8(end,1),Tout(end),X8(end,2),0.06,c(8,:))

plot3(X9(:,1),Tout,X9(:,2),'LineWidth',3,'Color',c(9,:))
bubbleplot3(X9(1,1),Tout(1),X9(1,2),0.05,c(9,:))
bubbleplot3(X9(end,1),Tout(end),X9(end,2),0.06,c(9,:))

plot3(X0(:,1),Tout,X0(:,2),'LineWidth',3,'Color',c(10,:))
bubbleplot3(X0(1,1),Tout(1),X0(1,2),0.05,c(10,:))
bubbleplot3(X0(end,1),Tout(end),X0(end,2),0.06,c(10,:))

N=100;
phi=0:2*pi/N:2*pi;

gray=[101 101 108]/255;
plot3(cos(phi),zeros(size(phi)),sin(phi),'LineWidth',3,'Color',gray)
plot3(cos(phi),tspan(2)*ones(size(phi)),sin(phi),'LineWidth',3,'Color',gray)

ax=gca;
ax.Visible='off';

az=51.2000;
el=14.8000;
view([az,el])