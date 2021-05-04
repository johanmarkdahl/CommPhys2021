clear, clc, close all

N=50;
agents=0:N;

% these are basin of attraction estimates mu
St12=[NaN NaN 1 1 1 .9468 .8580 .8089 .7498 .7160 .6790 .6572 .6369 .5995 .5833 .5641 .5439 .5205 .5147 .5101 .4884 .4800 .4677 .4559 .4476 .4544 .4299 .4274 .4182 .4127 .3955 .3951 .3806 .3921 .3730 .3729 .3780 .3679 .3588 .3541 .3554 .3364 .3430 .3430 .3292 .3260 .3272 .3293 .3334 NaN   .3204];
St23=[NaN NaN 1 1 1 .9236 .8247 .7374 .6709 .6334 .5966 .5769 .5537 .5383 .5330 .5310 .5126 .5005 .5103 .5100 .5146 .5022 .5004 .4992 .5020 .5025 .4977 .5032 .5013 .5028 .5019 .5036 .4915 .5065 .5010 .5060 .5051 .4971 .4967 .5048 .5051 .4886 .4942 .4970 .5006 .4991 .5128 .5527 .586  .6136 .6350];
St13=[NaN NaN 1 1 1 1     1     1     1     1     1     1     1     1     1     1     1     1     1     1      1    1     1     1     1     1     1     1     1     1     1     1     1     1     1     1     1     1     1     1     1     1     1     1     1     1     1     1     1     1     1];
St34=[NaN NaN 1 1 1 .9123 .7930 .7070 .6379 .5914 .5607 .5468 .5256 .5248 .5078 .5170 .5020 .5182 .5023 .5039 .5028 .4876 .4940 .5010 .4979 .5058 .5028 .4971 .5135 .5029 .5013 .5022 .5040 .4982 .5015 .5018 .4982 .5026 .5040 .5003 .4992 NaN   NaN   NaN   NaN   NaN   NaN   NaN   NaN   NaN   NaN];
St45=[NaN NaN 1 1 1 .9133 .7847 .6850 .6199 .5736 .5422 .5198 .5146 .5065 .5043 .4984 .4960 .5046 .5028 .4986 .4917 .4979 .4965 .4968 .5003 .5030 .4959 .4928 .4898 .4956 .4975 .4985 .5024 .5047 .5110 .5108 .5076 .5048 .5088 .5032 .5019 NaN   NaN   NaN   NaN   NaN   NaN   NaN   NaN   NaN   NaN];

% these are practical synchronization values for Omega in N(1,1/N^2)
St12_p=[NaN NaN .9966 .9962 .9959 .9909 .9195 .8321 .7748 .7430 .7106 .6699 .6584 .6356 .6077 .5897 .5661 .5649 .5548 .5300 .5199 .5176 .5140 .5013 .4889 .4905 .4777 .4712 .4703 .4682 .4511 .4511 .4466 .4415 .4338 .4308 .4300 .4227 .4215 .4208 .4135];
St13_p=[NaN NaN .9948 .9946 .9948 .9953 .9956 .9957 .9953 .9946 .9929 .9899 .9864 .9824 .9785 .9750 .9729 .9721 .9730 .9742 .9769 .9788 .9799 .9817 .9829 .9842 .9848 .9854 .9862 .9863 .9862 .9861 .9861 .9862 .9856 .9857 .9850 .9846 .9833 .9821 .9817];
St23_p=[NaN NaN .7041 .7042 .7044 .6967 .6712 .6521 .6393 .6283 .6222 .6163 .6124 .6112 .6079 .6062 .6048 .6025 .6027 .6040 .6017 .6026 .6023 .6006 .6006 .6016 .5990 .6002 .6014 .5993 .5985 .5975 .5968 .5957 .5964 .5952 .5925 .5903 .5888 .5843 .5844];
St34_p=[NaN NaN .5745 .5746 .5747 .5703 .5555 .5444 .5376 .5331 .5288 .5266 .5252 .5246 .5239 .5229 .5229 .5220 .5227 .5225 .5218 .5216 .5212 .5211 .5207 .5209 .5212 .5211 .5204 .5194 .5198 .5191 .5205 .5184 .5189 .5187 .5172 .5159 .5149 .5124 .5125];
St45_p=[NaN NaN .4971 .4972 .4974 .4944 .4839 .4770 .4722 .4698 .4678 .4665 .4660 .4657 .4653 .4649 .4649 .4646 .4652 .4642 .4644 .4641 .4648 .4637 .4640 .4641 .4634 .4635 .4638 .4635 .4637 .4634 .4631 .4624 .4624 .4620 .4614 .4608 .4589 .4586 .4576];
%       0   1   2     3     4     5     6     7     8     9     10    11    12    13    14    15    16    17    18    19    20    21    22    23    24    25    26    27    28    29    30    31    32    33    34    35    36    37    38    39    40    41    42    43    44    45    46    47    48    49    50];

c=lines(5);
figure(1)
subplot(1,2,1)
hold on

% plot the mu values
h12=plot(agents,St12,'markersize',8,'linewidth',4,'color',c(1,:)); 
h13=plot(agents,St13,'markersize',8,'linewidth',4,'color',c(2,:)); 
h23=plot(agents,St23,'markersize',8,'linewidth',4,'color',c(3,:)); 
h34=plot(agents,St34,'markersize',8,'linewidth',4,'color',c(4,:)); 
h45=plot(agents,St45,'markersize',8,'linewidth',4,'color',c(5,:)); 

l1=legend([h12 h13 h23 h34 h45],'$\mathcal{S}^1$','$\mathcal{S}^2$','$\mathsf{SO}(3)$','$\mathsf{SO}(4)$','$\mathsf{SO}(5)$','interpreter','latex');
set(l1,'position',[.30 .55 0.2 0.4])
set(l1,'fontsize',20,'box','off','fontname','helvetica')

set(gca,...
    'xtick',[0:20:40],...
    'ytick',[0:.5:1],...
    'xminortick','on',...
    'fontname','times',...
    'fontsize',20,...
    'xgrid','on',...
    'ygrid','on',...
    'linewidth',2,...
    'xcolor',[101 101 108]/255,...
    'ycolor',[101 101 108]/255)

xlabel('$N$','fontname','Times','fontsize',20,'interpreter','latex')
ylabel('$\mu(\mathcal{B}(\mathcal{S}))$','fontname','Times','fontsize',20,'interpreter','latex')
axis([0 40 0 1])

% plot the R values
subplot(1,2,2)
hold on

h12_p=plot(0:(length(St12_p)-1),St12_p,'markersize',8,'linewidth',4,'color',c(1,:));
h13_p=plot(0:(length(St13_p)-1),St13_p,'markersize',8,'linewidth',4,'color',c(2,:)); %d-
h23_p=plot(0:(length(St23_p)-1),St23_p,'markersize',8,'linewidth',4,'color',c(3,:));
h34_p=plot(0:(length(St34_p)-1),St34_p,'markersize',8,'linewidth',4,'color',c(4,:));
h45_p=plot(0:(length(St45_p)-1),St45_p,'markersize',8,'linewidth',4,'color',c(5,:));

set(gca,...
    'xtick',[0:20:40],...
    'ytick',[0:.5:1],...
    'xminortick','on',...
    'fontname','times',...
    'fontsize',20,...
    'xgrid','on',...
    'ygrid','on',...
    'yticklabel',[0 .5 1],...
    'linewidth',2,...
    'xcolor',[101 101 108]/255,...
    'ycolor',[101 101 108]/255)

xlabel('$N$','fontname','Times','fontsize',20,'interpreter','latex')
ylabel('$R$','fontname','Times','fontsize',20,'interpreter','latex')
axis([0 40 0 1])

% a) and b)
annotation('textbox', [0.075, .97, 0, 0], 'string', 'a','FontSize',32,'FontName','Helvetica')
annotation('textbox', [0.505, .97, 0, 0], 'string', 'b','FontSize',32,'FontName','Helvetica')
frame_h=get(handle(gcf),'JavaFrame');
set(frame_h,'Maximized',1)
print -depsc -r300 -tiff Rvalues.eps