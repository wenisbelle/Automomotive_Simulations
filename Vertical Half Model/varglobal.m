clc 
clear all

global a1 a2 b1 b2 Mch Wch Iyy C vp Kf Kr Kp mr Wr Vcarro  
a1=1.4; % distance from the mass center to the frontal anchor's point
a2=1.4; % distance from the mass center to the rear anchor's point
C=4000; % dumper coefficient
Mch=1109; % Half of the vehicle mass
Wch=-9.81*Mch;
Iyy=856; % half of the inercial in the yy axis
Kf=20000; % Front suspension spring constant
Kr=20000; % Rear suspension spring constant 
Kp=200000; % Tire spring constant
mr=113.5; % wheel mass
Wr=-9.81*mr;
Vcarro=4.5/3.6; %vehicle speed