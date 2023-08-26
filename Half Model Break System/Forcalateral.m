function y=Forcalateral(V)
global C

alp1=V(1)-V(5);
alp2=V(2)-V(5);
alp3=V(3);
alp4=V(4);

f1=-C*alp1;
f2=-C*alp2;
f3=-C*alp3;
f4=-C*alp4;

F1=cos(V(5))*f1;
F2=cos(V(5))*f2;
F3=f3;
F4=f4;

y=[F1;F2;F3;F4];

end