function y=eqmovimento(V)
global Mch Wch Iyy Izz Ixx

Fcg=[V(1);V(2);V(3)];
Mcg=[V(4);V(5);V(6)];
wx = V(7);
wy = V(8);
wz = V(9);

ax=Fcg(1)/Mch;
ay=Fcg(2)/Mch;
az=(Fcg(3)+Wch)/Mch;

wxp=(Mcg(1)-wy*wz*(-Iyy+Izz))/Ixx;
wyp=(Mcg(2)-wx*wz*(Ixx-Izz))/Iyy;
wzp=(Mcg(3)-wx*wy*(Iyy-Ixx))/Izz;

y=[ax;ay;az;wxp;wyp;wzp];

end