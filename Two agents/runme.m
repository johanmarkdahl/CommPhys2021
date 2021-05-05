clear,close all,clc

sphereframe2(1)
c=lines(5);
N=50;

% plot latitude
s=0.6283;
r=0.97;
t=0:2*pi/(N-1):2*pi;
lat_x=cos(t).*cos(s);
lat_y=sin(t).*cos(s);
lat_z=sin(s)*ones(length(t),1);
for i=2:N
    plot3(r*[lat_x(i);lat_x(i-1)],r*[lat_y(i);lat_y(i-1)],r*[lat_z(i);lat_z(i-1)],'Color',c(4,:),'LineWidth',4)
end

x=[-1 -1 1]'/sqrt(3);
theta=2*pi/6;
e3=[0 0 1]';
y=x*cos(theta)+cross(e3,x)*sin(theta)+e3*dot(e3,x)*(1-cos(theta));
xi=-1.5*theta;
x=y*cos(xi)+cross(e3,y)*sin(xi)+e3*dot(e3,y)*(1-cos(xi));
bubbleplot3(x(1),x(2),x(3),0.05,c(1,:))
bubbleplot3(y(1),y(2),y(3),0.05,c(2,:))

z=cross(x,y);
z=z/norm(z);
phi=0:2*pi/(N-1):2*pi;
a=zeros(3,N);
for i=1:N
    a(:,i)=x*cos(phi(i))+cross(z,x)*sin(phi(i))+z*dot(z,x)*(1-cos(phi(i)));
end
b=y*cos(phi(2))+cross(-z,y)*sin(phi(2))-z*dot(-z,y)*(1-cos(phi(2)));

% plot great circle
for i=1:N-1
    %plot3([a(:,i-1);a(:,i)],[a(:,i-1);a(:,i)],[a(:,i-1);a(:,i)],'Color','k','LineWidth',2)
    v=[a(:,i)';a(:,i+1)'];
    plot3(r*v(:,1),r*v(:,2),r*v(:,3),'color',[0 0 0],'LineWidth',4,'Color','k')
end

len=5;
quiver3(x(1),x(2),x(3),len*(a(1,2)-x(1)),len*(a(2,2)-x(2)),len*(a(3,2)-x(3)),'LineWidth',4,'Color',c(1,:),'MaxHeadSize',10)
quiver3(y(1),y(2),y(3),len*(b(1)-y(1)),len*(b(2)-y(2)),len*(b(3)-y(3)),'LineWidth',4,'Color',c(2,:),'MaxHeadSize',10)

i=27;
len2=2*len;
%plot3(r*[lat_x(i);lat_x(i-1)],r*[lat_y(i);lat_y(i-1)],r*[lat_z(i);lat_z(i-1)],'Color','r','LineWidth',2)
quiver3(x(1),x(2),x(3),len2*(lat_x(i)-x(1)),len2*(lat_y(i)-x(2)),len2*(lat_z(i)-x(3)),'LineWidth',4,'Color',c(1,:),'MaxHeadSize',10)
quiver3(x(1),x(2),x(3),len*(a(1,2)-x(1))+len2*(lat_x(i)-x(1)),len*(a(2,2)-x(2))+len2*(lat_y(i)-x(2)),len*(a(3,2)-x(3))+len2*(lat_z(i)-x(3)),'LineWidth',4,'Color',c(1,:),'MaxHeadSize',10)

frameh=get(handle(gcf),'JavaFrame');
set(frameh,'Maximized',1)
set(gcf,'color','w');

% save at 300 dpi
print -depsc -r300 -tiff latitude.eps