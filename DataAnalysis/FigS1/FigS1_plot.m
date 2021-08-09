fig1=figure(1)
clf();
set(gcf,'position',[50,100,1480,480])
load('Dataset3.mat')

axes('position',[0.092,0.600,0.155,0.326])
A1=log10(IL6_Survivor);A2=log10(IL6_Death);
n1=size(A1);n2=size(A2);
P=[A1; A2];
X=datashift(1,A1');
plot(X(:,1),X(:,2),'.','markersize',12,'color',[0.97,0.46,0.36]);
hold on
X2=datashift(2,A2');
plot(X2(:,1),X2(:,2),'s','markersize',5,'Markerfacecolor',[0.05,0.36,0.56],'MarkerEdgecolor',[0.05,0.36,0.56]);
g2=repmat({'Death'},[n2,1]);
g1=repmat({'Survivor'},[n1,1]);
g=[g1;g2];
h=boxplot(P,g,'Symbol','w','Widths',0.75);
set(h,'LineWidth',1.2)
set(h(:,1),'color',[0.97,0.46,0.36])
set(h(:,2),'color',[0.05,0.36,0.56])
ylim([0,6])
ylabel('log_{10} pg ml^{-1}','FontName','Helvetica','FontSize',10,'FontWeight','bold')
set(gca,'linewidth',1.2,'FontName','Helvetica','FontSize',10,'FontWeight','bold','ytick',...
    0:2:6)
title('IL-6','FontName','Helvetica','FontSize',10,'FontWeight','bold')
annotation(fig1,'line',[0.140340340340345 0.196216216216216],...
    [0.855 0.855],'LineWidth',1.2);
annotation(fig1,'textbox',...
    [0.138997997998003 0.855925925925928 0.0647857857857823 0.0562962962962967],...
    'String',{'P=2.17\times10^{-9}'},...
    'FontName','Helvetica','FontSize',10,'FontWeight','bold',...
    'FitBoxToText','off',...
    'EdgeColor','none');
box off

axes('position',[0.312,0.600,0.155,0.326])
A1=log10(IL10_Survivor);A2=log10(IL10_Death);
n1=size(A1);n2=size(A2);
P=[A1; A2];
X=datashift(1,A1');
X=datashift(1,A1');
plot(X(:,1),X(:,2),'.','markersize',12,'color',[0.97,0.46,0.36]);
hold on
X2=datashift(2,A2');
plot(X2(:,1),X2(:,2),'s','markersize',5,'Markerfacecolor',[0.05,0.36,0.56],'MarkerEdgecolor',[0.05,0.36,0.56]);

g2=repmat({'Death'},[n2,1]);
g1=repmat({'Survivor'},[n1,1]);
g=[g1;g2];
h=boxplot(P,g,'Symbol','w','Widths',0.75);
set(h,'LineWidth',1.2)
set(h(:,1),'color',[0.97,0.46,0.36])
set(h(:,2),'color',[0.05,0.36,0.56])
ylim([0,3])

set(gca,'linewidth',1.2,'FontName','Helvetica','FontSize',10,'FontWeight','bold','ytick',...
    0:1:3)
title('IL-10','FontName','Helvetica','FontSize',10,'FontWeight','bold')
annotation(fig1,'textbox',...
    [0.363352352352354 0.861296296296297 0.0486746746746734 0.0548148148148154],...
    'String','P=0.0079',...
    'FontName','Helvetica','FontSize',10,'FontWeight','bold',...
    'FitBoxToText','off',...
    'EdgeColor','none');
annotation(fig1,'line',[0.357407407407409 0.415185185185187],...
    [0.872333333333333 0.872333333333333],'LineWidth',1.2);box off
box off

axes('position',[0.532,0.600,0.155,0.326])
A1=log10(IFN_Survivor);A2=log10(IFN_Death);
n1=size(A1);n2=size(A2);
P=[A1; A2];
X=datashift(1,A1');
X=datashift(1,A1');
plot(X(:,1),X(:,2),'.','markersize',12,'color',[0.97,0.46,0.36]);
hold on
X2=datashift(2,A2');
plot(X2(:,1),X2(:,2),'s','markersize',5,'Markerfacecolor',[0.05,0.36,0.56],'MarkerEdgecolor',[0.05,0.36,0.56]);

g2=repmat({'Death'},[n2,1]);
g1=repmat({'Survivor'},[n1,1]);
g=[g1;g2];
h=boxplot(P,g,'Symbol','w','Widths',0.75);
set(h,'LineWidth',1.2)
set(h(:,1),'color',[0.97,0.46,0.36])
set(h(:,2),'color',[0.05,0.36,0.56])
ylim([0,3])
%ylabel('log_{10} pg ml^{-1}')
set(gca,'linewidth',1.2,'FontName','Helvetica','FontSize',10,'FontWeight','bold','ytick',...
    0:1:3)
title('IFN-\gamma','FontName','Helvetica','FontSize',10,'FontWeight','bold','FontSize',10)
annotation(fig1,'line',[0.579159159159162 0.633973973973977],...
    [0.812333333333335 0.812333333333335],'LineWidth',1.2);
annotation(fig1,'textbox',...
    [0.584423423423427 0.81814814814815 0.0440900900900887 0.0474074074074072],...
    'String','P=0.071',...
    'FontName','Helvetica','FontSize',10,'FontWeight','bold',...
    'FitBoxToText','off',...
    'EdgeColor','none');
box off

load('Dataset4.mat')
axes('position',[0.092,0.150,0.155,0.326])
A0=IL6_HCW;A1=IL6_Moderate;A2=IL6_Severe;
n0=size(A0);n1=size(A1);n2=size(A2);
P=[A0;A1;A2];
X0=datashift(1,A0');
plot(X0(:,1),X0(:,2),'^','markersize',2.5,'Markerfacecolor',[0.89,0.40,0.13],'MarkerEdgecolor',[0.89,0.40,0.13]);
hold on
X1=datashift(2,A1');
plot(X1(:,1),X1(:,2),'.','markersize',12,'color',[0.35,0.10,0.71]);
hold on
X2=datashift(3,A2');
plot(X2(:,1),X2(:,2),'s','markersize',5,'Markerfacecolor',[0.13,0.55,0.61],'MarkerEdgecolor',[0.13,0.55,0.61]);

g2=repmat({'Severe'},[n2,1]);
g1=repmat({'Moderate'},[n1,1]);
g0=repmat({'HCW'},[n0,1])
g=[g0;g1;g2];
h=boxplot(P,g,'Symbol','w','Widths',0.75);
set(h,'LineWidth',1.2)
set(h(:,1),'color',[0.89,0.40,0.13])
set(h(:,2),'color',[0.35,0.10,0.71])
set(h(:,3),'color',[0.13,0.55,0.61])
ylim([-1.8,6])
ylabel('log_{10}pg ml^{-1}','FontName','Helvetica','FontSize',10,'FontWeight','bold')
set(gca,'linewidth',1.2,'FontName','Helvetica','FontSize',10,'FontWeight','bold','ytick',...
    0:2:6)
title('IL-6','FontWeight','bold','FontSize',10)
annotation(fig1,'textbox',...
    [0.142201201201203 0.430370370370372 0.0652312312312308 0.0498988899879181],...
    'String','P=4.98\times10^{-16}',...
    'FontName','Helvetica','FontSize',10,'FontWeight','bold',...
    'FitBoxToText','off',...
    'EdgeColor','none');
annotation(fig1,'line',[0.132297297297297 0.212297297297297],...
    [0.42875 0.42875],'LineWidth',1.2);
annotation(fig1,'textbox',...
    [0.174033033033037 0.391851851851853 0.0561021021020983 0.0512528849324113],...
    'String',{'P=4.17\times10^{-8}'},...
    'FontName','Helvetica','FontSize',10,'FontWeight','bold',...
    'FitBoxToText','off',...
    'EdgeColor','none');
annotation(fig1,'line',[0.179324324324324 0.217097097097101],...
    [0.39375 0.39375],'LineWidth',1.2);
annotation(fig1,'textbox',...
    [0.113032032032035 0.362962962962964 0.0641301301301275 0.0555830311023197],...
    'String',{'P=1.14\times10^{-18}'},...
    'FontName','Helvetica','FontSize',10,'FontWeight','bold',...
    'FitBoxToText','off',...
    'EdgeColor','none');
annotation(fig1,'line',[0.111591591591592 0.175295295295296],...
    [0.364185185185185 0.364185185185185],'LineWidth',1.2);
box off

axes('position',[0.312,0.150,0.155,0.326])
A0=IL10_HCW;A1=IL10_Moderate;A2=IL10_Severe;
n0=size(A0);n1=size(A1);n2=size(A2);
P=[A0;A1;A2];
X0=datashift(1,A0');
plot(X0(:,1),X0(:,2),'^','markersize',2.5,'Markerfacecolor',[0.89,0.40,0.13],'MarkerEdgecolor',[0.89,0.40,0.13]);
hold on
X1=datashift(2,A1');
plot(X1(:,1),X1(:,2),'.','markersize',12,'color',[0.35,0.10,0.71]);
hold on
X2=datashift(3,A2');
plot(X2(:,1),X2(:,2),'s','markersize',5,'Markerfacecolor',[0.13,0.55,0.61],'MarkerEdgecolor',[0.13,0.55,0.61]);

g2=repmat({'Severe'},[n2,1]);
g1=repmat({'Moderate'},[n1,1]);
g0=repmat({'HCW'},[n0,1])
g=[g0;g1;g2];
h=boxplot(P,g,'Symbol','w','Widths',0.75);
set(h,'LineWidth',1.2)
set(h(:,1),'color',[0.89,0.40,0.13])
set(h(:,2),'color',[0.35,0.10,0.71])
set(h(:,3),'color',[0.13,0.55,0.61])
ylim([-2,5])
% ylabel('log_{10}pg ml^{-1}')
set(gca,'linewidth',1.2,'FontName','Helvetica','FontSize',10,'FontWeight','bold','ytick',...
    -1:2:5)
title('IL-10','FontName','Helvetica','FontSize',10,'FontWeight','bold')
annotation(fig1,'line',[0.34920920920921 0.395875875875877],...
    [0.365185185185185 0.365185185185185],'LineWidth',1.2);
annotation(fig1,'textbox',...
    [0.345944944944948 0.365555555555555 0.059865865865865 0.04888888888889],...
    'String','P=7.5\times10^{-10}',...
    'FontName','Helvetica','FontSize',10,'FontWeight','bold',...
    'FitBoxToText','off',...
    'EdgeColor','none');
annotation(fig1,'line',[0.402567567567568 0.439864864864865],...
    [0.392083333333333 0.392083333333333],'LineWidth',1.2);
annotation(fig1,'textbox',...
    [0.396035035035036 0.390740740740742 0.0638298298298294 0.0533333333333342],...
    'String','P=4.47\times10^{-6}',...
    'FontName','Helvetica','FontSize',10,'FontWeight','bold',...
    'FitBoxToText','off',...
    'EdgeColor','none');
annotation(fig1,'line',[0.359324324324324 0.436621621621622],...
    [0.42375 0.42375],'LineWidth',1.2);
annotation(fig1,'textbox',...
    [0.365424424424426 0.429074074074074 0.0636296296296284 0.0474074074074077],...
    'String','P=7.26\times10^{-13}',...
    'FontName','Helvetica','FontSize',10,'FontWeight','bold',...
    'FitBoxToText','off',...
    'EdgeColor','none');
box off

axes('position',[0.532,0.150,0.155,0.326])
A0=IFN_HCW;A1=IFN_Moderate;A2=IFN_Severe;
n0=size(A0);n1=size(A1);n2=size(A2);
P=[A0;A1;A2];
X0=datashift(1,A0');
plot(X0(:,1),X0(:,2),'^','markersize',2.5,'Markerfacecolor',[0.89,0.40,0.13],'MarkerEdgecolor',[0.89,0.40,0.13]);
hold on
X1=datashift(2,A1');
plot(X1(:,1),X1(:,2),'.','markersize',12,'color',[0.35,0.10,0.71]);
hold on
X2=datashift(3,A2');
plot(X2(:,1),X2(:,2),'s','markersize',5,'Markerfacecolor',[0.13,0.55,0.61],'MarkerEdgecolor',[0.13,0.55,0.61]);

g2=repmat({'Severe'},[n2,1]);
g1=repmat({'Moderate'},[n1,1]);
g0=repmat({'HCW'},[n0,1])
g=[g0;g1;g2];
h=boxplot(P,g,'Symbol','w','Widths',0.75);
set(h,'LineWidth',1.2)
set(h(:,1),'color',[0.89,0.40,0.13])
set(h(:,2),'color',[0.35,0.10,0.71])
set(h(:,3),'color',[0.13,0.55,0.61])
ylim([-1,6])
%ylabel('log_{10}pg ml^{-1}')
set(gca,'linewidth',1.2,'FontName','Helvetica','FontSize',10,'FontWeight','bold','ytick',...
    0:2:6)
title('IFN-\gamma','FontName','Helvetica','FontSize',10,'FontWeight','bold')
annotation(fig1,'line',[0.566351351351352 0.606891891891892],...
    [0.335416666666667 0.335416666666667],'LineWidth',1.2);
annotation(fig1,'textbox',...
    [0.56180580580581 0.334074074074074 0.050491491491489 0.0492592592592602],...
    'String','P=0.0028',...
    'FontName','Helvetica','FontSize',10,'FontWeight','bold',...
    'FitBoxToText','off',...
    'EdgeColor','none');
annotation(fig1,'line',[0.613658658658662 0.652917917917921],...
    [0.342222222222224 0.342222222222224],'LineWidth',1.2);
annotation(fig1,'textbox',...
    [0.608913913913919 0.340370370370371 0.0482482482482458 0.0462962962962967],...
    'String',{'P=0.0043'},...
    'FontName','Helvetica','FontSize',10,'FontWeight','bold',...
    'FitBoxToText','off',...
    'EdgeColor','none');
annotation(fig1,'line',[0.569354354354358 0.64310810810811],...
    [0.391962962962964 0.391962962962964],'LineWidth',1.2);
annotation(fig1,'textbox',...
    [0.577201201201204 0.393333333333333 0.0626636636636622 0.0537037037037041],...
    'String',{'P=4.21\times10^{-5}'},...
    'FontName','Helvetica','FontSize',10,'FontWeight','bold',...
    'FitBoxToText','off',...
    'EdgeColor','none');
box off

annotation(fig1,'textbox',...
    [0.0421 0.868 0.0212 0.107],...
    'String','a',...
    'FontWeight','bold',...
    'FontSize',15,...
    'FitBoxToText','off',...
    'EdgeColor','none');
annotation(fig1,'textbox',...
    [0.268 0.868 0.0212 0.107],...
    'String','b',...
    'FontWeight','bold',...
    'FontSize',15,...
    'FitBoxToText','off',...
    'EdgeColor','none');
annotation(fig1,'textbox',...
    [0.488 0.868 0.0212 0.107],...
    'String','c',...
    'FontWeight','bold',...
    'FontSize',15,...
    'FitBoxToText','off',...
    'EdgeColor','none');

annotation(fig1,'textbox',...
    [0.0421 0.426 0.0212 0.107],...
    'String','d',...
    'FontWeight','bold',...
    'FontSize',15,...
    'FitBoxToText','off',...
    'EdgeColor','none');
annotation(fig1,'textbox',...
    [0.268 0.426 0.0212 0.107],...
    'String','e',...
    'FontWeight','bold',...
    'FontSize',15,...
    'FitBoxToText','off',...
    'EdgeColor','none');
annotation(fig1,'textbox',...
    [0.488 0.426 0.0212 0.107],...
    'String','f',...
    'FontWeight','bold',...
    'FontSize',15,...
    'FitBoxToText','off',...
    'EdgeColor','none');
exportfig(fig1,'FigS1.eps','color','cmyk','fontmode','scaled','fontsize',1);

function X=datashift(k,U)
n=size(U,2);
X=zeros(n,2);
for i=1:n
    X(i,1) = k + 0.5*(rand()-0.5);
    X(i,2) = U(i);
end
end