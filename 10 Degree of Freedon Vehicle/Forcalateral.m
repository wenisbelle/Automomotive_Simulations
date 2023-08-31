function y=Forcalateral(V)

f1=-V(1);
f2=-V(2);
f3=-V(3);
f4=-V(4);

F1x=-sin(V(5))*f1;
F1y=cos(V(5))*f1;

F2x=-sin(V(5))*f2;
F2y=cos(V(5))*f2;

F3y=f3;
F4y=f4;

y=[F1y;F2y;F3y;F4y;F1x;F2x];

end