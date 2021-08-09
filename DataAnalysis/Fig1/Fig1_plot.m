fig1=figure(1)
clf();
set(gcf,'position',[50,100,1480,480])
load('Dataset4.mat')

axes('position',[0.092,0.600,0.155,0.326])
A0=NaiveCD4_HCW;A1=NaiveCD4_Moderate;A2=NaiveCD4_Severe;
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
ylim([-5 60])
ylabel('% of CD4^{+}','FontName','Helvetica','FontSize',10,'FontWeight','bold')
set(gca,'linewidth',1.2,'FontName','Helvetica','FontSize',10,'FontWeight','bold','ytick',...
    0:20:60)
title('Naive CD4 T cell','FontName','Helvetica','FontSize',10,'FontWeight','bold')
annotation(fig1,'line',[0.132297297297297 0.16527027027027],...
    [0.83875 0.83875],'LineWidth',1.2);
annotation(fig1,'textbox',...
    [0.130349349349351 0.844814814814815 0.0360020020020012 0.0355555555555571],...
    'String','P=0.21',...
    'FontName','Helvetica','FontSize',10,'FontWeight','bold',...
    'FitBoxToText','off',...
    'EdgeColor','none');
annotation(fig1,'line',[0.177297297297298 0.217297297297298],...
    [0.840666666666667 0.840185185185186],'LineWidth',1.2);
annotation(fig1,'textbox',...
    [0.177716716716718 0.846851851851852 0.0422832832832822 0.0385185185185188],...
    'String','P=0.021',...
    'FontName','Helvetica','FontSize',10,'FontWeight','bold',...
    'FitBoxToText','off',...
    'EdgeColor','none');
annotation(fig1,'line',[0.133513513513514 0.218378378378378],...
    [0.881666666666667 0.878333333333333],'LineWidth',1.2);
annotation(fig1,'line',[0.133513513513514 0.211891891891892],...
    [0.881666666666667 0.881666666666667],'LineWidth',1.2);
annotation(fig1,'textbox',...
    [0.154713713713716 0.883333333333333 0.0366376376376357 0.040000000000002],...
    'String','P=0.20',...
    'FontName','Helvetica','FontSize',10,'FontWeight','bold',...
    'FitBoxToText','off',...
    'EdgeColor','none');
box off


axes('position',[0.312,0.600,0.155,0.326])
A0=NaiveCD8_HCW;A1=NaiveCD8_Moderate;A2=NaiveCD8_Severe;
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
ylim([-5 80])
ylabel('% of CD8^{+}','FontName','Helvetica','FontSize',10,'FontWeight','bold')
set(gca,'linewidth',1.2,'FontName','Helvetica','FontSize',10,'FontWeight','bold','ytick',...
    0:20:80)
title('Naive CD8 T cell','FontName','Helvetica','FontSize',10,'FontWeight','bold')
annotation(fig1,'line',[0.346686686686688 0.391131131131132],...
    [0.818259259259259 0.817777777777777],'LineWidth',1.2);box off
annotation(fig1,'textbox',...
    [0.345144144144146 0.825740740740741 0.0467477477477463 0.0385185185185187],...
    'String','P=0.0051',...
    'FontName','Helvetica','FontSize',10,'FontWeight','bold',...
    'FitBoxToText','off',...
    'EdgeColor','none');
annotation(fig1,'line',[0.398918918918919 0.440540540540541],...
    [0.845 0.845],'LineWidth',1.2);
annotation(fig1,'textbox',...
    [0.395354354354355 0.846666666666666 0.0515925925925925 0.0398148148148153],...
    'String','P=0.1414',...
    'FontName','Helvetica','FontSize',10,'FontWeight','bold',...
    'FitBoxToText','off',...
    'EdgeColor','none');
annotation(fig1,'line',[0.350810810810811 0.43945945945946],...
    [0.883333333333333 0.881666666666667],'LineWidth',1.2);
annotation(fig1,'textbox',...
    [0.374833833833835 0.885555555555555 0.0375985985985977 0.0385185185185194],...
    'String','P=0.80',...
    'FontName','Helvetica','FontSize',10,'FontWeight','bold',...
    'FitBoxToText','off',...
    'EdgeColor','none');
box off
axes('position',[0.532,0.600,0.155,0.326])
A0=CD4_HCW;A1=CD4_Moderate;A2=CD4_Severe;
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
ylim([-0.1 2])
ylabel('Cells per ml(\times10^{6})','FontName','Helvetica','FontSize',10,'FontWeight','bold')
set(gca,'linewidth',1.2,'FontName','Helvetica','FontSize',10,'FontWeight','bold','ytick',...
    0:0.5:2)
title('CD4 T cell count','FontName','Helvetica','FontSize',10,'FontWeight','bold')
annotation(fig1,'line',[0.562342342342344 0.611971971971973],...
    [0.832333333333333 0.831851851851851],'LineWidth',1.2);
annotation(fig1,'textbox',...
    [0.55921821821822 0.825 0.0651061061061053 0.0561111111111112],...
    'String','P=1.64\times10^{-12}',...
    'FontName','Helvetica','FontSize',10,'FontWeight','bold',...
    'FitBoxToText','off',...
    'EdgeColor','none');
annotation(fig1,'line',[0.61953953953954 0.663983983983985],...
    [0.832518518518517 0.832037037037036],'LineWidth',1.2);
annotation(fig1,'textbox',...
    [0.620619619619622 0.830925925925926 0.0415425425425419 0.044444444444445],...
    'String',{'P=0.064'},...
    'FontName','Helvetica','FontSize',10,'FontWeight','bold',...
    'FitBoxToText','off',...
    'EdgeColor','none');
annotation(fig1,'line',[0.562122122122123 0.65841841841842],...
    [0.872703703703703 0.872222222222221],'LineWidth',1.2);
annotation(fig1,'textbox',...
    [0.581540540540542 0.875555555555555 0.0617027027027028 0.0474074074074075],...
    'String','P=1.46\times10^{-8}',...
    'FontName','Helvetica','FontSize',10,'FontWeight','bold',...
    'FitBoxToText','off',...
    'EdgeColor','none');
box off



axes('position',[0.742,0.600,0.155,0.326])
A0=CD8_HCW;A1=CD8_Moderate;A2=CD8_Severe;
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
ylim([-0.1 1])
% ylabel('Cells per ml(\times10^{6})')
set(gca,'linewidth',1.2,'FontName','Helvetica','FontSize',10,'FontWeight','bold','ytick',...
    0:0.2:1)
title('CD8 T cell count','FontName','Helvetica','FontSize',10,'FontWeight','bold')
annotation(fig1,'line',[0.772072072072074 0.815035035035037],...
    [0.808999999999999 0.808518518518518],'LineWidth',1.2);
annotation(fig1,'textbox',...
    [0.763342342342345 0.813888888888889 0.0582792792792771 0.0503703703703702],...
    'String','P=1.09\times10^{-9}',...
    'FontName','Helvetica','FontSize',10,'FontWeight','bold',...
    'FitBoxToText','off',...
    'EdgeColor','none');
annotation(fig1,'line',[0.82860860860861 0.867027027027027],...
    [0.807888888888889 0.806666666666667],'LineWidth',1.2);
annotation(fig1,'textbox',...
    [0.826045045045047 0.809444444444445 0.0426036036036033 0.0429629629629635],...
    'String','P=0.013',...
    'FontName','Helvetica','FontSize',10,'FontWeight','bold',...
    'FitBoxToText','off',...
    'EdgeColor','none');
annotation(fig1,'line',[0.76852852852853 0.865565565565567],...
    [0.858259259259259 0.857777777777779],'LineWidth',1.2);
annotation(fig1,'textbox',...
    [0.788567567567569 0.860370370370371 0.0606216216216218 0.0533333333333331],...
    'String','P=4.38\times10^{-9}',...
    'FontName','Helvetica','FontSize',10,'FontWeight','bold',...
    'FitBoxToText','off',...
    'EdgeColor','none');
box off

load('Dataset2.mat')
axes('position',[0.092,0.150,0.155,0.326])

A0=TIM3CD4_HC;A1=TIM3CD4_Mild;A2=TIM3CD4_Severe;
n0=size(A0);n1=size(A1);n2=size(A2);
P=[A0;A1;A2];
X0=datashift(1,A0');
plot(X0(:,1),X0(:,2),'^','markersize',2.5,'Markerfacecolor',[0.16,0.74,0.95],'MarkerEdgecolor',[0.16,0.74,0.95]);
hold on
X1=datashift(2,A1');
plot(X1(:,1),X1(:,2),'.','markersize',12,'color',[0.20,0.72,0.04]);
hold on
X2=datashift(3,A2');
plot(X2(:,1),X2(:,2),'s','markersize',5,'Markerfacecolor',[0.81,0.11,0.10],'MarkerEdgecolor',[0.81,0.11,0.10]);

g2=repmat({'Severe'},[n2,1]);
g1=repmat({'Mild'},[n1,1]);
g0=repmat({'HC'},[n0,1]);
g=[g0;g1;g2];
h=boxplot(P,g,'Symbol','w','Widths',0.75);
set(h,'LineWidth',1.2)
set(h(:,1),'color',[0.16,0.74,0.95])
set(h(:,2),'color',[0.20,0.72,0.04])
set(h(:,3),'color',[0.81,0.11,0.10])
ylim([-1,40])
ylabel('%','FontName','Helvetica','FontSize',10,'FontWeight','bold')
set(gca,'linewidth',1.2,'FontName','Helvetica','FontSize',10,'FontWeight','bold','ytick',...
    0:10:40)
title('Tim-3+CD4+T cells','FontName','Helvetica','FontSize',10,'FontWeight','bold')
annotation(fig1,'line',[0.128783783783784 0.166621621621622],...
    [0.22375 0.22375],'LineWidth',1.2);
annotation(fig1,'textbox',...
    [0.128627627627628 0.232222222222222 0.0385345345345347 0.0429629629629628],...
    'String',{'P=0.15'},...
    'FontName','Helvetica','FontSize',10,'FontWeight','bold',...
    'FitBoxToText','off',...
    'EdgeColor','none');
annotation(fig1,'line',[0.171711711711712 0.212027027027028],...
    [0.355416666666666 0.355416666666666],'LineWidth',1.2);
annotation(fig1,'textbox',...
    [0.16895795795796 0.361111111111111 0.0425285285285276 0.0400000000000015],...
    'String','P=0.013',...
    'FontName','Helvetica','FontSize',10,'FontWeight','bold',...
    'FitBoxToText','off',...
    'EdgeColor','none');
annotation(fig1,'line',[0.129324324324324 0.209324324324324],...
    [0.400416666666666 0.400416666666666],'LineWidth',1.2);
annotation(fig1,'textbox',...
    [0.147396396396397 0.403333333333333 0.0511171171171168 0.045925925925926],...
    'String','P=0.0076',...
    'FontName','Helvetica','FontSize',10,'FontWeight','bold',...
    'FitBoxToText','off',...
    'EdgeColor','none');
box off
axes('position',[0.312,0.150,0.155,0.326])
A0=TIM3CD8_HC;A1=TIM3CD8_Mild;A2=TIM3CD8_Severe;
n0=size(A0);n1=size(A1);n2=size(A2);
P=[A0;A1;A2];
X0=datashift(1,A0');
plot(X0(:,1),X0(:,2),'^','markersize',2.5,'Markerfacecolor',[0.16,0.74,0.95],'MarkerEdgecolor',[0.16,0.74,0.95]);
hold on
X1=datashift(2,A1');
plot(X1(:,1),X1(:,2),'.','markersize',12,'color',[0.20,0.72,0.04]);
hold on
X2=datashift(3,A2');
plot(X2(:,1),X2(:,2),'s','markersize',5,'Markerfacecolor',[0.81,0.11,0.10],'MarkerEdgecolor',[0.81,0.11,0.10]);

g2=repmat({'Severe'},[n2,1]);
g1=repmat({'Mild'},[n1,1]);
g0=repmat({'HC'},[n0,1]);
g=[g0;g1;g2];
h=boxplot(P,g,'Symbol','w','Widths',0.75);
set(h,'LineWidth',1.2)
set(h(:,1),'color',[0.16,0.74,0.95])
set(h(:,2),'color',[0.20,0.72,0.04])
set(h(:,3),'color',[0.81,0.11,0.10])
ylim([0,80])
% ylabel('%')
set(gca,'linewidth',1.2,'FontSize',10,'FontWeight','bold','ytick',...
    0:20:80)
title('Tim-3+CD8+T cells','FontWeight','bold','FontSize',10)
annotation(fig1,'line',[0.345135135135135 0.385135135135136],...
    [0.265416666666667 0.265416666666667],'LineWidth',1.2);
annotation(fig1,'textbox',...
    [0.346135135135137 0.268703703703704 0.0429189189189178 0.0429629629629631],...
    'String','P=0.022',...
    'FontName','Helvetica','FontSize',10,'FontWeight','bold',...
    'FitBoxToText','off',...
    'EdgeColor','none');
annotation(fig1,'line',[0.393903903903906 0.438783783783784],...
    [0.362777777777779 0.362777777777779],'LineWidth',1.2);
annotation(fig1,'textbox',...
    [0.39582582582585 0.371296296296296 0.042498498498498 0.041481481481482],...
    'String','P=0.073',...
    'FontName','Helvetica','FontSize',10,'FontWeight','bold',...
    'FitBoxToText','off',...
    'EdgeColor','none');
annotation(fig1,'line',[0.350135135135135 0.431216216216216],...
    [0.40875 0.40875],'LineWidth',1.2);
annotation(fig1,'textbox',...
    [0.3697987987988 0.417222222222223 0.0424984984984982 0.0429629629629634],...
    'String','P=0.050',...
    'FontName','Helvetica','FontSize',10,'FontWeight','bold',...
    'FitBoxToText','off',...
    'EdgeColor','none');
box off


load('Single_cell_RNA_Sequence.mat')
axes('position',[0.532,0.150,0.155,0.326])
x=0:0.05:4;
A1=TIM3_Treg_moderate(find(TIM3_Treg_moderate>0));
n=size(A1,1);
[u1,x]=hist(A1,x);
plot(x,100*u1/n,'b-','linewidth',1.2);
hold on
A2=TIM3_Treg_critical(find(TIM3_Treg_critical>0));
n=size(A2,1);
[u,x]=hist(A2,x);
plot(x,100*u/n,'r-','linewidth',1.2);
ylim([0 8])
xlabel('Expression level (scale)','FontName','Helvetica','FontSize',10,'FontWeight','bold')
ylabel('%')
set(gca,'FontName','Helvetica','FontSize',10,'FontWeight','bold','linewidth',1.2)
title('Tim-3 in CD4T/Treg cell','FontName','Helvetica','FontSize',10,'FontWeight','bold')
leg=legend({'Moderate','Critical'},'FontName','Helvetica','FontSize',10,'FontWeight','bold');
leg.ItemTokenSize = [10,3];
legend('boxoff')
box off

axes('position',[0.742,0.150,0.155,0.326])
x=0:0.05:4;
A1=TIM3_CTL_moderate(find(TIM3_CTL_moderate>0));
n=size(A1,1);
[u1,x]=hist(A1,x);
plot(x,100*u1/n,'b-','linewidth',1.2);
hold on
A2=TIM3_CTL_critical(find(TIM3_CTL_critical>0));
n=size(A2,1);
[u,x]=hist(A2,x);
plot(x,100*u/n,'r-','linewidth',1.2);
ylim([0 8])
xlabel('Expression level (scale)','FontName','Helvetica','FontSize',10,'FontWeight','bold')
set(gca,'FontSize',10,'FontName','Helvetica','FontSize',10,'FontWeight','bold','linewidth',1.2)
title('Tim-3 in CTL cell','FontName','Helvetica','FontSize',10,'FontWeight','bold')
leg=legend({'Moderate','Critical'},'FontName','Helvetica','FontSize',10,'FontWeight','bold');
leg.ItemTokenSize = [10,3];
legend('boxoff')
box off

annotation(fig1,'textbox',...
    [0.0561 0.868 0.0212 0.107],...
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
    [0.704 0.868 0.0212 0.107],...
    'String','d',...
    'FontWeight','bold',...
    'FontSize',15,...
    'FitBoxToText','off',...
    'EdgeColor','none');
annotation(fig1,'textbox',...
    [0.0561 0.426 0.0212 0.107],...
    'String','e',...
    'FontWeight','bold',...
    'FontSize',15,...
    'FitBoxToText','off',...
    'EdgeColor','none');
annotation(fig1,'textbox',...
    [0.268 0.426 0.0212 0.107],...
    'String','f',...
    'FontWeight','bold',...
    'FontSize',15,...
    'FitBoxToText','off',...
    'EdgeColor','none');
annotation(fig1,'textbox',...
    [0.488 0.426 0.0212 0.107],...
    'String','g',...
    'FontWeight','bold',...
    'FontSize',15,...
    'FitBoxToText','off',...
    'EdgeColor','none');
annotation(fig1,'textbox',...
    [0.704 0.426 0.0212 0.107],...
    'String','h',...
    'FontWeight','bold',...
    'FontSize',15,...
    'FitBoxToText','off',...
    'EdgeColor','none');
exportfig(fig1,'Fig1.eps','color','cmyk','fontmode','scaled','fontsize',1);

function X=datashift(k,U)
n=size(U,2);
X=zeros(n,2);
for i=1:n
    X(i,1) = k + 0.5*(rand()-0.5);
    X(i,2) = U(i);
end
end