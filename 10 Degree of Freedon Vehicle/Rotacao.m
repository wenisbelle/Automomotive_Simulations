function y=Rotacao(V)

wx=V(4);
wy=V(5);
wz=V(6);
yaw = V(3);
tta=V(2);
phi=V(1);

%y=[wx;wy;wz];
y=[1 tan(tta)*sin(phi) tan(tta)*cos(phi);0 cos(phi) -sin(phi);0 sin(phi)/cos(tta) cos(phi)/cos(tta)]*[wx;wy;wz];
%y=[cos(phi)*tan(tta) sin(phi)*tan(tta) 1;-sin(phi) cos(phi) 0;cos(phi)/cos(tta) sin(phi)/cos(tta) 0]*[wx;wy;wz];
end