function y=TransformadorT(V)
global a1 a2 b1 b2 KR

Hcm=-V(14);
Tx=[1 0 0;0 cos(V(1)) -sin(V(1));0 sin(V(1)) cos(V(1))];
Ty=[cos(V(2)) 0 sin(V(2));0 1 0;-sin(V(2)) 0 cos(V(2))];
Tz=[cos(V(3)) -sin(V(3)) 0;sin(V(3)) cos(V(3)) 0;0 0 1];

 T=Tz*Ty*Tx;
%T=Tx*Ty*Tz;

r1=[a1;b1;0];
r2=[a1;-b2;0];
r3=[-a2;b1;0];
r4=[-a2;-b2;0];

% Aux=[eye(3) -tilde(T*r1);eye(3) -tilde(T*r2);eye(3) -tilde(T*r3);eye(3) -tilde(T*r4)];
Aux=[eye(3) -T*tilde(r1);eye(3) -T*tilde(r2);eye(3) -T*tilde(r3);eye(3) -T*tilde(r4)];

%Vetor das forÃ§as
%F=[-sin(V(3))*V(4);cos(V(3))*V(4);V(8);-sin(V(3))*V(5);cos(V(3))*V(5);V(9);-sin(V(3))*V(6);cos(V(3))*V(6);V(10);-sin(V(3))*V(7);cos(V(3))*V(7);V(11)];

F1v=[0;0;V(10)];
F2v=[0;0;V(11)];
F3v=[0;0;V(12)];
F4v=[0;0;V(13)];

% F1=Tz*[V(8);V(4);V(10)];
% F2=Tz*[V(9);V(5);V(11)];
% F3=Tz*[0;V(6);V(12)];
% F4=Tz*[0;V(7);V(13)];

Y=Aux'*[F1v;F2v;F3v;F4v];

%Força devido aos pneus
F1l=Tz*[V(8);V(4);V(10)];
F2l=Tz*[V(9);V(5);V(11)];
F3l=Tz*[0;V(6);V(12)];
F4l=Tz*[0;V(7);V(13)];
F=F1l+F2l+F3l+F4l;

% M_lat=[0 -Hcm 0;Hcm 0 0;0 0 0]*([V(8);V(4);0]+[V(9);V(5);0]+[0;V(6);0]+[0;V(7);0]+[-V(1)*KR;0;0]);+[-V(1)*KR;0;0]

 M1=tilde([a1;b1;Hcm])*[V(8);V(4);0];
 M2=tilde([a1;-b2;Hcm])*[V(9);V(5);0];
 M3=tilde([-a2;b1;Hcm])*[0;V(6);0];
 M4=tilde([-a2;-b2;Hcm])*[0;V(7);0];
 M5=[-V(1)*KR;0;0];

 M_lat=M1 + M2 + M3 + M4 + M5; 

% y=[Y(1);Y(2);Y(3);0;0;0]+[F_lat;M_lat];
% y=Y+[F_lat;0;0;0];
y=[F;M_lat]+[0;0;0;Y(4:6,1)];

end