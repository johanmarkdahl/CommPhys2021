clear,close all,clc

% plot the solids
plotdode
plotiso
plotbuckyballs

% maximize figure
frameh=get(handle(gcf),'JavaFrame');
set(frameh,'Maximized',1)
set(gcf,'color','w');

% add subfigure labels
annotation('textbox',[0.12,.67,0,0],'String','a','FontSize',40,'FontName','Helvetica')
annotation('textbox',[0.4,.67,0,0],'String','b','FontSize',40,'FontName','Helvetica')
annotation('textbox',[0.68,.67,0,0],'String','c','FontSize',40,'FontName','Helvetica')

% save at 300 dpi
print -depsc -r300 -tiff solids.eps
