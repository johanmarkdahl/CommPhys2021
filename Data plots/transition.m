clear, clc, close all

k=-0.1:0.01:0.1;
c=lines(5);

figure(1)
hold on

% circle
% we don't plot R values for negative k since that should be s2 and s3 (all the plots overlap)
s12_pos=[9.9960e-05 0.0639 0.1082 0.1597 0.1704 0.2296 0.2520  0.2805 0.2776 0.3506 0.3769 0.4570 0.5242 0.6014 0.6710 0.7155 0.7517 0.8037 0.8314 0.8590 0.8797 0.9134 0.9187 0.9471 0.9616];
k12_pos=[0.0025:0.0025:0.02 0.02:0.005:0.1];
g12=plot([0 k12_pos],[0 s12_pos],'linewidth',4,'color',c(1,:)); % add zeros so the curve starts at the origin

% 2-sphere
k13=[-0.1:0.01:0 0.0025:0.0025:0.02 0.02:0.005:0.1];
s13_neg=[3.3329e-04 3.3320e-04 3.3333e-04 3.3317e-04 3.3326e-04 3.3331e-04 3.3322e-04 3.3320e-04 3.3324e-04 3.3329e-04  3.3322e-04]; 
g13=plot(k13(1:11),s13_neg,'linewidth',4,'color',c(2,:));
plot(k13(12:end),ones(25,1),'linewidth',4,'color',c(2,:))

% 3-sphere
k14_pos=[0.0025:0.0025:0.02 0.02:0.005:0.1];
s14_pos=[0.0224 0.1267 0.1671 0.2601 0.2986 0.3821 0.4364 0.4792 0.4798 0.5856 0.6638 0.7132 0.7670 0.8614 0.9011 0.9180 0.9456 0.9664 0.9667 0.9800 0.9849 0.9894 0.9930 0.9917 0.9958];
g14=plot([0 k14_pos],[0 s14_pos],'linewidth',4,'color',c(3,:));

% 4-sphere
k15=[-0.1:0.01:0 0.0025:0.0025:0.02 0.02:0.005:0.1];
s15_neg=[3.3299e-04 3.3319e-04 3.3329e-04 3.3320e-04 3.3275e-04 3.3315e-04 3.3306e-04 3.3325e-04 3.3319e-04 3.3324e-04 3.3322e-04];
g15=plot(k15(1:11),s15_neg(1:11),'--','linewidth',4,'color',c(4,:));
plot(k15(12:end),ones(25,1),'--','linewidth',4,'color',c(4,:))

% 5-sphere
k16=[-0.1:0.01:0 0.0025:0.0025:0.02 0.02:0.005:0.1];
s16=[0.0370 0.1476 0.2595 0.3042 0.4021 0.4939 0.5270 0.6044 0.6045 0.7119 0.7992 0.8478 0.8825 0.9255 0.9466 0.9756 0.9878 0.9903 0.9894 0.9938 0.9960 0.9967 0.9968 0.9972 0.9976];
g16=plot([0 k16(12:end)],[0 s16],'linewidth',4,'color',c(5,:));

plot(0,1,'o','MarkerEdgeColor',c(4,:),'MarkerFaceColor','w','MarkerSize',6,'LineWidth',3)
plot(0,0,'o','MarkerEdgeColor',c(4,:),'MarkerFaceColor',c(4,:),'MarkerSize',6,'LineWidth',3)

set(gca,...
    'xtick',[-0.1:0.1:0.1],...
    'ytick',[0:.5:1],...
    'xminortick','on',...
    'fontname','times',...
    'fontsize',20,...
    'xgrid','on',...
    'ygrid','on',...
    'linewidth',2,...
    'xcolor',[101 101 108]/255,...
    'ycolor',[101 101 108]/255)
xlabel('$K$','fontname','Times','fontsize',20,'interpreter','latex')
ylabel('$R$','fontname','Times','fontsize',20,'interpreter','latex')

l1=legend([g12 g13 g14 g15 g16],'$\mathcal{S}^1$','$\mathcal{S}^2$','$\mathcal{S}^3$','$\mathcal{S}^4$','$\mathcal{S}^5$','interpreter','latex');

set(l1,'position',[.3 .50 0.2 0.4])
set(l1,'fontsize',20,'box','off','fontname','helvetica')
axis square
frame_h=get(handle(gcf),'JavaFrame');
set(frame_h,'Maximized',1)
print -depsc -r300 -tiff nullspace.eps
