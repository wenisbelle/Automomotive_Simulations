clc 
clear all

global a1 a2 b1 b2 Mch Wch Ixx Iyy Izz vp C1 C2 Kp Ka KR mrfrontal mrretaguarda deltar Vcarro c0 c1 c2 c3 c4 c5 c6 c7 c8 c9 c10 c11 c12 c13 gama 
a1=1.6552;
a2=1.885;
%C=30000;
C1=3200;
b1=0.71;
b2=0.71;
Mch=1715;
Wch=-9.81*Mch;
Iyy=4035.1;
Ixx=638.6;
Izz=3865.9;
C2=3200;
vp=0.4064;
Kp=200000; %constante elsstica do pneu
Ka=3*10^7; %constante elastica do aro da roda
Vcarro=4.5/3.6;
deltar=0.1;
KR=20000;
mrfrontal=60;
mrretaguarda=75;


% Tire Lateral Dynamics
gama=0;
c0=1.3;
c1=2.11730205091124;
c2=1107.12078963468;
c3=1815.61454620049; 
c4=9.04928686083952;
c5=0;
c6=0.379372936887382;
c7=-4.06030921357273;
c8=0;
c9=0;
c10=0;
c11=0;
c12=0;
c13=0;

%% Parâmetros Sugeno Toolbox
Gx1=1/0.5;
Gv1=1/0.5;
Ga1=1/7;
Gu1=1.8;
