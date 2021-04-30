clear,clc,clf,close all

tiledlayout(1,5, 'Padding', 'none', 'TileSpacing', 'compact'); 

for i=1:5  
    nexttile    
    hold on
    
    sphereframe2(1)
    
    rho=1; % normalize vectors and make them float above sphere
    theta=2*pi/9;
    
    R=[cos(theta) -sin(theta) 0
        sin(theta)  cos(theta) 0
        0           0          1];
    
    switch i
        case 1
            x1=rho*[1 0 0]';
        case 2
            theta=pi/2-(pi/2)/4;
            x1=rho*[sin(theta) 0 cos(theta)]';
        case 3
            theta=pi/2-2*(pi/2)/4;
            x1=rho*[sin(theta) 0 cos(theta)]';
        case 4
            theta=pi/2-3*(pi/2)/4;
            x1=rho*[sin(theta) 0 cos(theta)]';
        case 5
            theta=0;
            x1=rho*[sin(theta) 0 cos(theta)]';
    end
    
    x2=R*x1;
    x3=R*x2;
    x4=R*x3;
    x5=R*x4;
    x6=R*x5;
    x7=R*x6;
    x8=R*x7;
    x9=R*x8;
    
    X=[x1'
        x2'
        x3'
        x4'
        x5'
        x6'
        x7'
        x8'
        x9'];
    
    %%
    gray=[60 60 60]/255;
    if i>=3
        gray=[0 0 0];
    end
    
    bubbleplot3(X(:,1),X(:,2),X(:,3),0.05*ones(size(X)),[0 0 0])
    bubbleplot3(X(2,1),X(2,2),X(2,3),0.05*ones(size(X)),gray)
    bubbleplot3(X(1,1),X(1,2),X(1,3),0.05*ones(size(X)),gray)
    bubbleplot3(X(3,1),X(3,2),X(3,3),0.05*ones(size(X)),gray)
    
    v=[x1';x2'];
    plot3(v(:,1),v(:,2),v(:,3),'color',gray,'LineWidth',4)
    v=[x2';x3'];
    plot3(v(:,1),v(:,2),v(:,3),'color',gray,'LineWidth',4)
    v=[x3';x4'];
    plot3(v(:,1),v(:,2),v(:,3),'color',gray,'LineWidth',4)
    v=[x4';x5'];
    plot3(v(:,1),v(:,2),v(:,3),'color','k','LineWidth',4)
    v=[x5';x6'];
    plot3(v(:,1),v(:,2),v(:,3),'color','k','LineWidth',4)
    v=[x6';x7'];
    plot3(v(:,1),v(:,2),v(:,3),'color','k','LineWidth',4)
    v=[x7';x8'];
    plot3(v(:,1),v(:,2),v(:,3),'color','k','LineWidth',4)
    v=[x8';x9'];
    plot3(v(:,1),v(:,2),v(:,3),'color','k','LineWidth',4)
    v=[x9';x1'];
    plot3(v(:,1),v(:,2),v(:,3),'color',gray,'LineWidth',4)
    
    az=-37.5;
    el=30;
    view(az,el)

    
end

frameh=get(handle(gcf),'JavaFrame');
set(frameh,'Maximized',1)
set(gcf,'color','w');

% save at 300 dpi
print -depsc -r300 -tiff deform.eps