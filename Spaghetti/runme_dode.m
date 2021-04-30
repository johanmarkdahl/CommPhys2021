rng(10)
tspan=[0 20];
phi=(1+sqrt(5))/2;
rho=1.05/sqrt(3);
x=zeros(60,1);

x(1:3)=rho*[1 1 1]';
x(4:6)=rho*[1 1 -1]';
x(7:9)=rho*[1 -1 1]';
x(10:12)=rho*[-1 1 1]';
x(13:15)=rho*[1 -1 -1]';
x(16:18)=rho*[-1 1 -1]';
x(19:21)=rho*[-1 -1 1]';
x(22:24)=rho*[-1 -1 -1]';
x(25:27)=rho*[0 1/phi phi]';
x(28:30)=rho*[0 1/phi -phi]';
x(31:33)=rho*[0 -1/phi phi]';
x(34:36)=rho*[0 -1/phi -phi]';
x(37:39)=rho*[1/phi phi 0]';
x(40:42)=rho*[1/phi -phi 0]';
x(43:45)=rho*[-1/phi phi 0]';
x(46:48)=rho*[-1/phi -phi 0]';
x(49:51)=rho*[phi 0 1/phi]';
x(52:54)=rho*[phi 0 -1/phi]';
x(55:57)=rho*[-phi 0 1/phi]';
x(58:60)=rho*[-phi 0 -1/phi]';

P=zeros(3,3,20);
R=zeros(3,3,20);
myeps=0.1;
Xin=x;

randomize=1; % random perturbations (0 gives homogeneous model)
zerosum=1; % sum of all perturbations is zero
sigma=1; % scale the size of perturbations
W=zeros(3,3,20);

if randomize
    for i=1:20
        W(:,:,i)=sigma*randn(3,3);
        W(:,:,i)=.5*(W(:,:,i)-W(:,:,i)');
    end
end
    
if zerosum
    Wsum=sum(W,3);
    for i=1:20
        W(:,:,i)=W(:,:,i)-1/20*Wsum;
    end
end

[Tout,Xout]=ode45(@(t,x)state_eq_dode(t,x,W),tspan,Xin);

X1=Xout(:,1:3);
X2=Xout(:,4:6);
X3=Xout(:,7:9);
X4=Xout(:,10:12);
X5=Xout(:,13:15);
X6=Xout(:,16:18);
X7=Xout(:,19:21);
X8=Xout(:,22:24);
X9=Xout(:,25:27);
X10=Xout(:,28:30);
X11=Xout(:,31:33);
X12=Xout(:,34:36);
X13=Xout(:,37:39);
X14=Xout(:,40:42);
X15=Xout(:,43:45);
X16=Xout(:,46:48);
X17=Xout(:,49:51);
X18=Xout(:,52:54);
X19=Xout(:,55:57);
X20=Xout(:,58:60);

hold on
axis equal
hold on
axis([-1 1 -1 1 -1 1])


c1=[216 84 151]/255; % pink
c2=[36 160 215]/255; % blue
c3=[176 201 43]/255; % green
c4=[228 54 62]/255;  % red
c5=[0 0 0];

c=lines(20)
%parula
%jet
%lines

%c1=[2,63,165]/255;
%c2=[142,6,59]/255;
%c3='k';
%c4=[190,193,212]/255;
%c5=[214,188,192]/255;
c6=[187,119,132]/255;

plot3(X1(:,1),X1(:,2),X1(:,3),'LineWidth',4,'Color',c(1,:))
bubbleplot3(X1(1,1),X1(1,2),X1(1,3),0.03,c(1,:))
bubbleplot3(X1(end,1),X1(end,2),X1(end,3),0.06,c(1,:))
%plot3(X1(1,1),X1(1,2),X1(1,3),'o','LineWidth',3,'Color',c1)
%plot3(X1(end,1),X1(end,2),X1(end,3),'o','LineWidth',3,'Color',c1)

plot3(X2(:,1),X2(:,2),X2(:,3),'LineWidth',4,'Color',c(2,:))
bubbleplot3(X2(1,1),X2(1,2),X2(1,3),0.03,c(2,:))
bubbleplot3(X2(end,1),X2(end,2),X2(end,3),0.06,c(2,:))
%plot3(X2(1,1),X2(1,2),X2(1,3),'o','LineWidth',3,'Color',c2)
%plot3(X2(end,1),X2(end,2),X2(end,3),'o','LineWidth',3,'Color',c2)

plot3(X3(:,1),X3(:,2),X3(:,3),'LineWidth',4,'Color',c(3,:))
bubbleplot3(X3(1,1),X3(1,2),X3(1,3),0.03,c(3,:))
bubbleplot3(X3(end,1),X3(end,2),X3(end,3),0.06,c(3,:))
%plot3(X3(1,1),X3(1,2),X3(1,3),'o','LineWidth',3,'Color',c3)
%plot3(X3(end,1),X3(end,2),X3(end,3),'o','LineWidth',3,'Color',c3)

plot3(X4(:,1),X4(:,2),X4(:,3),'LineWidth',4,'Color',c(4,:))
bubbleplot3(X4(1,1),X4(1,2),X4(1,3),0.03,c(4,:))
bubbleplot3(X4(end,1),X4(end,2),X4(end,3),0.06,c(4,:))
%plot3(X4(1,1),X4(1,2),X4(1,3),'o','LineWidth',3,'Color',c6)
%plot3(X4(end,1),X4(end,2),X4(end,3),'o','LineWidth',3,'Color',c6)

plot3(X5(:,1),X5(:,2),X5(:,3),'LineWidth',4,'Color',c(5,:))
bubbleplot3(X5(1,1),X5(1,2),X5(1,3),0.03,c(5,:))
bubbleplot3(X5(end,1),X5(end,2),X5(end,3),.06,c(5,:))
%plot3(X5(1,1),X5(1,2),X5(1,3),'o','LineWidth',3,'Color',c5)
%plot3(X5(end,1),X5(end,2),X5(end,3),'o','LineWidth',3,'Color',c5)

plot3(X6(:,1),X6(:,2),X6(:,3),'LineWidth',4,'Color',c(6,:))
bubbleplot3(X6(1,1),X6(1,2),X6(1,3),0.03,c(6,:))
bubbleplot3(X6(end,1),X6(end,2),X6(end,3),.06,c(6,:))

plot3(X7(:,1),X7(:,2),X7(:,3),'LineWidth',4,'Color',c(7,:))
bubbleplot3(X7(1,1),X7(1,2),X7(1,3),0.03,c(7,:))
bubbleplot3(X7(end,1),X7(end,2),X7(end,3),.06,c(7,:))

plot3(X8(:,1),X8(:,2),X8(:,3),'LineWidth',4,'Color',c(8,:))
bubbleplot3(X8(1,1),X8(1,2),X8(1,3),0.03,c(8,:))
bubbleplot3(X8(end,1),X8(end,2),X8(end,3),.06,c(8,:))

plot3(X9(:,1),X9(:,2),X9(:,3),'LineWidth',4,'Color',c(9,:))
bubbleplot3(X9(1,1),X9(1,2),X9(1,3),0.03,c(9,:))
bubbleplot3(X9(end,1),X9(end,2),X9(end,3),.06,c(9,:))

plot3(X10(:,1),X10(:,2),X10(:,3),'LineWidth',4,'Color',c(10,:))
bubbleplot3(X10(1,1),X10(1,2),X10(1,3),0.03,c(10,:))
bubbleplot3(X10(end,1),X10(end,2),X10(end,3),.06,c(10,:))

plot3(X11(:,1),X11(:,2),X11(:,3),'LineWidth',4,'Color',c(11,:))
bubbleplot3(X11(1,1),X11(1,2),X11(1,3),0.03,c(11,:))
bubbleplot3(X11(end,1),X11(end,2),X11(end,3),.06,c(11,:))

plot3(X12(:,1),X12(:,2),X12(:,3),'LineWidth',4,'Color',c(12,:))
bubbleplot3(X12(1,1),X12(1,2),X12(1,3),0.03,c(12,:))
bubbleplot3(X12(end,1),X12(end,2),X12(end,3),.06,c(12,:))

plot3(X13(:,1),X13(:,2),X13(:,3),'LineWidth',4,'Color',c(13,:))
bubbleplot3(X13(1,1),X13(1,2),X13(1,3),0.03,c(13,:))
bubbleplot3(X13(end,1),X13(end,2),X13(end,3),.06,c(13,:))

plot3(X14(:,1),X14(:,2),X14(:,3),'LineWidth',4,'Color',c(14,:))
bubbleplot3(X14(1,1),X14(1,2),X14(1,3),0.03,c(14,:))
bubbleplot3(X14(end,1),X14(end,2),X14(end,3),.06,c(14,:))

plot3(X15(:,1),X15(:,2),X15(:,3),'LineWidth',4,'Color',c(15,:))
bubbleplot3(X15(1,1),X15(1,2),X15(1,3),0.03,c(15,:))
bubbleplot3(X15(end,1),X15(end,2),X15(end,3),.06,c(15,:))

plot3(X16(:,1),X16(:,2),X16(:,3),'LineWidth',4,'Color',c(16,:))
bubbleplot3(X16(1,1),X16(1,2),X16(1,3),0.03,c(16,:))
bubbleplot3(X16(end,1),X16(end,2),X16(end,3),.06,c(16,:))

plot3(X17(:,1),X17(:,2),X17(:,3),'LineWidth',4,'Color',c(17,:))
bubbleplot3(X17(1,1),X17(1,2),X17(1,3),0.03,c(17,:))
bubbleplot3(X17(end,1),X17(end,2),X17(end,3),.06,c(17,:))

plot3(X18(:,1),X18(:,2),X18(:,3),'LineWidth',4,'Color',c(18,:))
bubbleplot3(X18(1,1),X18(1,2),X18(1,3),0.03,c(18,:))
bubbleplot3(X18(end,1),X18(end,2),X18(end,3),.06,c(18,:))

plot3(X19(:,1),X19(:,2),X19(:,3),'LineWidth',4,'Color',c(19,:))
bubbleplot3(X19(1,1),X19(1,2),X19(1,3),0.03,c(19,:))
bubbleplot3(X19(end,1),X19(end,2),X19(end,3),.06,c(19,:))

plot3(X20(:,1),X20(:,2),X20(:,3),'LineWidth',4,'Color',c(20,:))
bubbleplot3(X20(1,1),X20(1,2),X20(1,3),0.03,c(20,:))
bubbleplot3(X20(end,1),X20(end,2),X20(end,3),.06,c(20,:))

%text(0,0,1.3,'a')
%myangle=-0.3;
%text(1.3*cos(myangle),1.3*sin(myangle),0,'b')

%N=100;
%phi=0:2*pi/N:2*pi;
%plot3(cos(phi),zeros(size(phi)),sin(phi),'LineWidth',2,'Color',[125,135,185]/255)
%plot3(cos(phi),tspan(2)*ones(size(phi)),sin(phi),'LineWidth',2,'Color',[125,135,185]/255)

sphereframe(1)

rho=.95;

ax = gca;
ax.Visible = 'off';
axis equal