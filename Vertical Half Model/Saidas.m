function y=Saidas(V)

beta1=atan(V(2)/V(1));
vz1=V(3);

beta2=atan(V(5)/V(4));
vz2=V(6);

beta3=atan(V(8)/V(7));
vz3=V(9);

beta4=atan(V(11)/V(10));
vz4=V(12);


y=[beta1;beta2;beta3;beta4;vz1;vz2;vz3;vz4];
