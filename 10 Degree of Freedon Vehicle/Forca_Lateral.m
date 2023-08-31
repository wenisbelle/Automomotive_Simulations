function y=Forca_Lateral(V)
global c0 c1 c2 c3 c4 c5 c6 c7 c8 c9 c10 c11 c12 c13 gama

alp=180*V(1)/pi;
Fz=V(2)/1000;

u=c1*Fz+c2;
D=u*Fz;
C=c0;

if D==0
    B=0;
else
    B=(c3*sin(2*atan(Fz/(c4)))*(1-c5*gama))/(C*D);
end

E=c6*Fz+c7;
Sh=c8*gama + c9*Fz + c10;
Sv=c11*Fz*gama + c12*Fz + c13;

Flateral=D*sin(C*atan(B*(alp+Sh)-E*(B*(alp+Sh)-atan(B*(alp+Sh)))))+Sv;

%if D==0
    Xp=0;
    Xn=0;
%{
    else
    syms x
    f1=B*(1-E)*x+E*atan(B*x)-tan(pi/(2*C));
    Xp=vpasolve(f1,x);
    Xp=double(Xp);
    f2=B*(1-E)*x+E*atan(B*x)-tan(-pi/(2*C));
    Xn=vpasolve(f2,x);
    Xn=double(Xn);
end
%}

y=[Flateral;Xp;Xn];

end