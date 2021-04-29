subplot(1,3,3)
hold on
sphereframe(1)

rho=1.02/norm([2.16650   0.59060   2.58740]); % normalize vectors and make them float above sphere

x1=rho*[2.16650   0.59060   2.58740];
x2=rho*[3.03780   0.17660   1.59180];
x3=rho*[1.27860  -0.30980   3.16790];
x4=rho*[3.01180  -1.14340   1.16540];
x5=rho*[3.10340  -1.43350  -0.19300];
x6=rho*[3.15030   1.21060   0.66820];
x7=rho*[3.24280   0.91490  -0.68590];
x8=rho*[3.21920  -0.40230  -1.12070];
x9=rho*[-0.43930   1.35270   3.12710];
x10=rho*[0.43630   2.26180   2.55420];
x11=rho*[-0.02960   0.06330   3.43790]; 
x12=rho*[1.74420   1.87900   2.28300];
x13=rho*[2.35190   2.26760   1.09900];
x14=rho*[-0.26330   3.02680   1.63260];
x15=rho*[0.33740   3.40540   0.43730];
x16=rho*[1.65160   3.02780   0.17070];
x17=rho*[-2.09030  -0.82250   2.59550];
x18=rho*[-2.51110   0.46640   2.28540];
x19=rho*[-0.84490  -1.02520   3.17380];
x20=rho*[-1.68740   1.55330   2.55120];
x21=rho*[-1.58430   2.58580   1.63190];
x22=rho*[-3.23140   0.40610   1.10070];
x23=rho*[-3.12270   1.44100   0.17460];
x24=rho*[-2.29470   2.52910   0.43990];
x25=rho*[-0.49080  -2.91330   1.73650];
x26=rho*[-1.74300  -2.71240   1.16370];
x27=rho*[-0.03930  -2.06840   2.74530];
x28=rho*[-2.54860  -1.66500   1.59420];
x29=rho*[-3.26020  -0.91410   0.67010];
x30=rho*[-1.65430  -3.00610  -0.18970];
x31=rho*[-2.35420  -2.24390  -1.11700];
x32=rho*[-3.16430  -1.19490  -0.68780];
x33=rho*[2.13640  -2.05530   1.73580];
x34=rho*[1.68950  -2.90090   0.72930];
x35=rho*[1.27850  -1.63660   2.74350];
x36=rho*[0.36780  -3.33270   0.73020];
x37=rho*[-0.34400  -3.39040  -0.45940];
x38=rho*[2.28890  -2.52500  -0.46400];
x39=rho*[1.57900  -2.57180  -1.65800];
x40=rho*[0.25600  -3.00540  -1.65310];
x41=rho*[-2.18280  -0.57830  -2.59790];
x42=rho*[-1.74800  -1.86940  -2.30830];
x43=rho*[-0.43850  -2.24690  -2.58450];
x44=rho*[-1.28150   0.31890  -3.16710];
x45=rho*[-2.15260   2.05450  -1.73780];
x46=rho*[-3.04850   1.15350  -1.18110];
x47=rho*[-3.06560  -0.16290  -1.61070];
x48=rho*[-1.26610   1.64070  -2.72710];
x49=rho*[0.50390   2.93610  -1.74180];
x50=rho*[-0.37880   3.35610  -0.75130];
x51=rho*[-1.69430   2.91860  -0.74910];
x52=rho*[0.05210   2.07300  -2.73550];
x53=rho*[2.09760   0.83400  -2.60510];
x54=rho*[2.55170   1.69230  -1.61070];
x55=rho*[1.75890   2.74520  -1.18240];
x56=rho*[0.84200   1.02060  -3.17860];
x57=rho*[0.44610  -1.34950  -3.16610];
x58=rho*[1.69830  -1.54850  -2.59080];
x59=rho*[2.51840  -0.46230  -2.31710];
x60=rho*[0.02180  -0.06450  -3.45850];

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
   x12
   x13
   x14
   x15
   x16
   x17
   x18
   x19
   x20
   x21
   x22
   x23
   x24
   x25
   x26
   x27
   x28
   x29
   x30
   x31
   x32
   x33
   x34
   x35
   x36
   x37
   x38
   x39
   x40
   x41
   x42
   x43
   x44
   x45
   x46
   x47
   x48
   x49
   x50
   x51
   x52
   x53
   x54
   x55
   x56
   x57
   x58
   x59
   x60];

bubbleplot3(X(:,1),X(:,2),X(:,3),0.05*ones(size(X)),[0 0 0])

gray=[60 60 60]/255;

bubbleplot3(X(1,1),X(1,2),X(1,3),0.05*ones(size(X)),gray)
bubbleplot3(X(2,1),X(2,2),X(2,3),0.05*ones(size(X)),gray)
bubbleplot3(X(4,1),X(4,2),X(4,3),0.05*ones(size(X)),gray)
bubbleplot3(X(5,1),X(5,2),X(5,3),0.05*ones(size(X)),gray)
bubbleplot3(X(6,1),X(6,2),X(6,3),0.05*ones(size(X)),gray)
bubbleplot3(X(7,1),X(7,2),X(7,3),0.05*ones(size(X)),gray)
bubbleplot3(X(8,1),X(8,2),X(8,3),0.05*ones(size(X)),gray)
bubbleplot3(X(10,1),X(10,2),X(10,3),0.05*ones(size(X)),gray)
bubbleplot3(X(12,1),X(12,2),X(12,3),0.05*ones(size(X)),gray)
bubbleplot3(X(13,1),X(13,2),X(13,3),0.05*ones(size(X)),gray)
bubbleplot3(X(14,1),X(14,2),X(14,3),0.05*ones(size(X)),gray)
bubbleplot3(X(15,1),X(15,2),X(15,3),0.05*ones(size(X)),gray)
bubbleplot3(X(16,1),X(16,2),X(16,3),0.05*ones(size(X)),gray)
bubbleplot3(X(49,1),X(49,2),X(49,3),0.05*ones(size(X)),gray)
bubbleplot3(X(50,1),X(50,2),X(50,3),0.05*ones(size(X)),gray)
bubbleplot3(X(52,1),X(52,2),X(52,3),0.05*ones(size(X)),gray)
bubbleplot3(X(53,1),X(53,2),X(53,3),0.05*ones(size(X)),gray)
bubbleplot3(X(54,1),X(54,2),X(54,3),0.05*ones(size(X)),gray)
bubbleplot3(X(55,1),X(55,2),X(55,3),0.05*ones(size(X)),gray)
bubbleplot3(X(56,1),X(56,2),X(56,3),0.05*ones(size(X)),gray)
bubbleplot3(X(59,1),X(59,2),X(59,3),0.05*ones(size(X)),gray)

v=[x1;x2];
plot3(v(:,1),v(:,2),v(:,3),'color',gray,'LineWidth',4)
v=[x1;x12];
plot3(v(:,1),v(:,2),v(:,3),'color',gray,'LineWidth',4)
v=[x1;x3];
plot3(v(:,1),v(:,2),v(:,3),'color',gray,'LineWidth',4)

v=[x2;x4];
plot3(v(:,1),v(:,2),v(:,3),'color',gray,'LineWidth',4)
v=[x2;x6];
plot3(v(:,1),v(:,2),v(:,3),'color',gray,'LineWidth',4)

v=[x3;x11];
plot3(v(:,1),v(:,2),v(:,3),'color','k','LineWidth',4)
v=[x3;x35];
plot3(v(:,1),v(:,2),v(:,3),'color','k','LineWidth',4)

v=[x4;x33];
plot3(v(:,1),v(:,2),v(:,3),'color',gray,'LineWidth',4)
v=[x4;x5];
plot3(v(:,1),v(:,2),v(:,3),'color',gray,'LineWidth',4)

v=[x5;x38];
plot3(v(:,1),v(:,2),v(:,3),'color',gray,'LineWidth',4)
v=[x5;x8];
plot3(v(:,1),v(:,2),v(:,3),'color',gray,'LineWidth',4)

v=[x6;x7];
plot3(v(:,1),v(:,2),v(:,3),'color',gray,'LineWidth',4)
v=[x6;x13];
plot3(v(:,1),v(:,2),v(:,3),'color',gray,'LineWidth',4)

v=[x7;x8];
plot3(v(:,1),v(:,2),v(:,3),'color',gray,'LineWidth',4)
v=[x7;x54];
plot3(v(:,1),v(:,2),v(:,3),'color',gray,'LineWidth',4)

v=[x8;x59];
plot3(v(:,1),v(:,2),v(:,3),'color',gray,'LineWidth',4)

v=[x9;x10];
plot3(v(:,1),v(:,2),v(:,3),'color','k','LineWidth',4)
v=[x9;x11];
plot3(v(:,1),v(:,2),v(:,3),'color','k','LineWidth',4)
v=[x9;x20];
plot3(v(:,1),v(:,2),v(:,3),'color','k','LineWidth',4)

v=[x10;x14];
plot3(v(:,1),v(:,2),v(:,3),'color',gray,'LineWidth',4)
v=[x10;x12];
plot3(v(:,1),v(:,2),v(:,3),'color',gray,'LineWidth',4)

v=[x11;x19];
plot3(v(:,1),v(:,2),v(:,3),'k','LineWidth',4)

v=[x12;x13];
plot3(v(:,1),v(:,2),v(:,3),'color',gray,'LineWidth',4)

v=[x13;x16];
plot3(v(:,1),v(:,2),v(:,3),'color',gray,'LineWidth',4)

v=[x14;x15];
plot3(v(:,1),v(:,2),v(:,3),'color',gray,'LineWidth',4)
v=[x14;x21];
plot3(v(:,1),v(:,2),v(:,3),'color',gray,'LineWidth',4)

v=[x15;x50];
plot3(v(:,1),v(:,2),v(:,3),'color',gray,'LineWidth',4)
v=[x15;x16];
plot3(v(:,1),v(:,2),v(:,3),'color',gray,'LineWidth',4)

v=[x16;x55];
plot3(v(:,1),v(:,2),v(:,3),'color',gray,'LineWidth',4)

v=[x17;x18];
plot3(v(:,1),v(:,2),v(:,3),'k','LineWidth',4)
v=[x17;x19];
plot3(v(:,1),v(:,2),v(:,3),'k','LineWidth',4)
v=[x17;x28];
plot3(v(:,1),v(:,2),v(:,3),'k','LineWidth',4)

v=[x18;x20];
plot3(v(:,1),v(:,2),v(:,3),'k','LineWidth',4)
v=[x18;x22];
plot3(v(:,1),v(:,2),v(:,3),'k','LineWidth',4)

v=[x19;x27];
plot3(v(:,1),v(:,2),v(:,3),'k','LineWidth',4)

v=[x20;x21];
plot3(v(:,1),v(:,2),v(:,3),'k','LineWidth',4)

v=[x21;x24];
plot3(v(:,1),v(:,2),v(:,3),'k','LineWidth',4)

v=[x22;x23];
plot3(v(:,1),v(:,2),v(:,3),'k','LineWidth',4)
v=[x22;x29];
plot3(v(:,1),v(:,2),v(:,3),'k','LineWidth',4)

v=[x23;x24];
plot3(v(:,1),v(:,2),v(:,3),'k','LineWidth',4)
v=[x23;x46];
plot3(v(:,1),v(:,2),v(:,3),'k','LineWidth',4)

v=[x24;x51];
plot3(v(:,1),v(:,2),v(:,3),'k','LineWidth',4)

v=[x25;x26];
plot3(v(:,1),v(:,2),v(:,3),'k','LineWidth',4)
v=[x25;x27];
plot3(v(:,1),v(:,2),v(:,3),'k','LineWidth',4)
v=[x25;x36];
plot3(v(:,1),v(:,2),v(:,3),'k','LineWidth',4)

v=[x26;x28];
plot3(v(:,1),v(:,2),v(:,3),'k','LineWidth',4)
v=[x26;x30];
plot3(v(:,1),v(:,2),v(:,3),'k','LineWidth',4)

v=[x27;x35];
plot3(v(:,1),v(:,2),v(:,3),'k','LineWidth',4)

v=[x28;x29];
plot3(v(:,1),v(:,2),v(:,3),'k','LineWidth',4)

v=[x29;x32];
plot3(v(:,1),v(:,2),v(:,3),'k','LineWidth',4)

v=[x30;x31];
plot3(v(:,1),v(:,2),v(:,3),'k','LineWidth',4)
v=[x30;x37];
plot3(v(:,1),v(:,2),v(:,3),'k','LineWidth',4)

v=[x31;x32];
plot3(v(:,1),v(:,2),v(:,3),'k','LineWidth',4)
v=[x31;x42];
plot3(v(:,1),v(:,2),v(:,3),'k','LineWidth',4)

v=[x32;x47];
plot3(v(:,1),v(:,2),v(:,3),'k','LineWidth',4)

v=[x33;x34];
plot3(v(:,1),v(:,2),v(:,3),'k','LineWidth',4)
v=[x33;x35];
plot3(v(:,1),v(:,2),v(:,3),'k','LineWidth',4)

v=[x34;x36];
plot3(v(:,1),v(:,2),v(:,3),'k','LineWidth',4)
v=[x34;x38];
plot3(v(:,1),v(:,2),v(:,3),'k','LineWidth',4)

v=[x36;x37];
plot3(v(:,1),v(:,2),v(:,3),'k','LineWidth',4)

v=[x37;x40];
plot3(v(:,1),v(:,2),v(:,3),'k','LineWidth',4)

v=[x38;x39];
plot3(v(:,1),v(:,2),v(:,3),'k','LineWidth',4)

v=[x39;x40];
plot3(v(:,1),v(:,2),v(:,3),'k','LineWidth',4)
v=[x39;x58];
plot3(v(:,1),v(:,2),v(:,3),'k','LineWidth',4)

v=[x40;x43];
plot3(v(:,1),v(:,2),v(:,3),'k','LineWidth',4)

v=[x41;x42];
plot3(v(:,1),v(:,2),v(:,3),'k','LineWidth',4)
v=[x41;x44];
plot3(v(:,1),v(:,2),v(:,3),'k','LineWidth',4)
v=[x41;x47];
plot3(v(:,1),v(:,2),v(:,3),'k','LineWidth',4)

v=[x42;x43];
plot3(v(:,1),v(:,2),v(:,3),'k','LineWidth',4)

v=[x43;x57];
plot3(v(:,1),v(:,2),v(:,3),'k','LineWidth',4)

v=[x44;x48];
plot3(v(:,1),v(:,2),v(:,3),'k','LineWidth',4)
v=[x44;x60];
plot3(v(:,1),v(:,2),v(:,3),'k','LineWidth',4)

v=[x45;x46];
plot3(v(:,1),v(:,2),v(:,3),'k','LineWidth',4)
v=[x45;x48];
plot3(v(:,1),v(:,2),v(:,3),'k','LineWidth',4)
v=[x45;x51];
plot3(v(:,1),v(:,2),v(:,3),'k','LineWidth',4)

v=[x46;x47];
plot3(v(:,1),v(:,2),v(:,3),'k','LineWidth',4)

v=[x48;x52];
plot3(v(:,1),v(:,2),v(:,3),'k','LineWidth',4)

v=[x49;x50];
plot3(v(:,1),v(:,2),v(:,3),'color',gray,'LineWidth',4)
v=[x49;x52];
plot3(v(:,1),v(:,2),v(:,3),'color',gray,'LineWidth',4)
v=[x49;x55];
plot3(v(:,1),v(:,2),v(:,3),'color',gray,'LineWidth',4)

v=[x50;x51];
plot3(v(:,1),v(:,2),v(:,3),'k','LineWidth',4)

v=[x52;x56];
plot3(v(:,1),v(:,2),v(:,3),'color',gray,'LineWidth',4)

v=[x53;x54];
plot3(v(:,1),v(:,2),v(:,3),'color',gray,'LineWidth',4)
v=[x53;x56];
plot3(v(:,1),v(:,2),v(:,3),'color',gray,'LineWidth',4)
v=[x53;x59];
plot3(v(:,1),v(:,2),v(:,3),'color',gray,'LineWidth',4)

v=[x54;x55];
plot3(v(:,1),v(:,2),v(:,3),'color',gray,'LineWidth',4)

v=[x56;x60];
plot3(v(:,1),v(:,2),v(:,3),'color',gray,'LineWidth',4)

v=[x57;x58];
plot3(v(:,1),v(:,2),v(:,3),'k','LineWidth',4)
v=[x57;x60];
plot3(v(:,1),v(:,2),v(:,3),'k','LineWidth',4)

v=[x58;x59];
plot3(v(:,1),v(:,2),v(:,3),'color',gray,'LineWidth',4)

az=-47.9795;
el=5.4000;
view(az,el)