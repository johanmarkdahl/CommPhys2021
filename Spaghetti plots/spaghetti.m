clear,close all,clc

subplot(1,2,1)
runme_cycle

subplot(1,2,2)
runme_dode

frameh=get(handle(gcf),'JavaFrame');
set(frameh,'Maximized',1)
set(gcf,'color','w');

annotation('textbox',[0.1,.75,0,0],'String','a','FontSize',40,'FontName','Helvetica')
annotation('textbox',[0.57,.75,0,0],'String','b','FontSize',40,'FontName','Helvetica')

print -depsc -r300 -tiff spaghetti.eps