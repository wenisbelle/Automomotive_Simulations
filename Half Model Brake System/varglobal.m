%clc 
clear all

global a1 a2 b1 b2 Mch Wch Iyy C vp Kf Kr Kp mr Wr Vcarro Iroda rd re g fRR
global Cd p A u_maximo

a1=1.4; % Distance from the GC to the front wheel
a2=1.4; % Distance from the GC to the back wheel
C=4000; 
b1=0.7;
b2=0.75;
Mch=700;
Wch=-9.81*Mch;
Iyy=500;
vp=0.4064;
Kf=13000;
Kr=13000;
Kp=200000;
mr=43.5;
Wr=-9.81*mr;
Vcarro=4.5/3.6;


g = 9.81;
re = 0.3;
rd = 0.96*re;
Iroda = 20.5;
fRR = 0.1;


Cd = 0.9;
p = 1.255;
A = 0.98;

u_maximo = 0.8;


