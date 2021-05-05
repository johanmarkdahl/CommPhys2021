function sphereframe(fignum)

figure(fignum)
hold on, axis equal, view(3)
set(gca,'Xtick',[],'Xcolor','white','Ytick',[],'Ycolor','white','Ztick',[],'Zcolor','white')

gray=[189 188 188]/255;
gray=[227 229 227]/255;
gray=[101 101 108]/255;
gray2=[189 188 188]/255;
gray=[101 101 108]/255;

n=100;

r=0.96;

k1=10;
k2=10;

for s=-pi/2:pi/(k1+1):pi/2
    t=0:2*pi/(n-1):2*pi;
    x=r*cos(t).*cos(s);
    y=r*sin(t).*cos(s);
    z=r*sin(s)*ones(length(t),1);
    for i=2:n
        plot3([x(i);x(i-1)],[y(i);y(i-1)],[z(i);z(i-1)],'Color',gray,'LineWidth',2)
    end
end

for t=-pi/2:pi/(k2+1):pi/2
    s=0:2*pi/(n-1):2*pi;
    x=r*cos(t).*cos(s);
    y=r*sin(t).*cos(s);
    z=r*sin(s)*ones(length(t),1);
    for i=2:n
        plot3([x(i);x(i-1)],[y(i);y(i-1)],[z(i);z(i-1)],'Color',gray,'LineWidth',2)
    end
end
axis equal