function y=Saidas(V)
%Matriz que leva do inercial ao referencial 1

Tz=[cos(V(13)) sin(V(13));-sin(V(13)) cos(V(13))];

%Agora reescrevemos a velocidade planar em relação ao referencial do chassi

v1=Tz*[V(1);V(2)];
v2=Tz*[V(4);V(5)];
v3=Tz*[V(7);V(8)];
v4=Tz*[V(10);V(11)];

beta1=atan(v1(2)/v1(1));
vz1=V(3);

beta2=atan(v2(2)/v2(1));
vz2=V(6);

beta3=atan(v3(2)/v3(1));
vz3=V(9);

beta4=atan(v4(2)/v4(1));
vz4=V(12);


y=[beta1;beta2;beta3;beta4;vz1;vz2;vz3;vz4;V(1);V(2);V(4);V(5);V(7);V(8);V(10);V(11)];
