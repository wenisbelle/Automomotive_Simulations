
cont=1;

 for i=6000:1:11000
    
    Fz=outMR.Fpv1(i,2)/1000;
    alp=outMR.alp1(i,2);
    if Fz==0
        max1(cont)=0;
    else
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

    syms x
        f1=B*(1-E)*x+E*atan(B*x)-tan(pi/(2*C));
        Xp=vpasolve(f1,x);
        %Xp=double(Xp);
        max1(cont)=Xp;
    end
    cont=cont+1;
 end 
 cont=1;
  for i=6000:1:11000
    
    Fz=outMR.Fpv2(i,2)/1000;
    alp=outMR.alp2(i,2);
    if Fz==0
        max2(cont)=0;
    else
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

    syms x
        f1=B*(1-E)*x+E*atan(B*x)-tan(pi/(2*C));
        Xp=vpasolve(f1,x);
        %Xp=double(Xp);
        max2(cont)=Xp;
    end
    cont=cont+1;
 end 
cont=1;
  for i=6000:1:11000
    
    Fz=outMR.Fpv3(i,2)/1000;
    alp=outMR.alp3(i,2);
    if Fz==0
        max3(cont)=0;
    else
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

    syms x
        f1=B*(1-E)*x+E*atan(B*x)-tan(pi/(2*C));
        Xp=vpasolve(f1,x);
        %Xp=double(Xp);
        max3(cont)=Xp;
    end
    cont=cont+1;
 end 

cont=1;
  for i=6000:1:11000
    
    Fz=outMR.Fpv4(i,2)/1000;
    alp=outMR.alp4(i,2);
    if Fz==0
        max4(cont)=0;
    else
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

    syms x
        f1=B*(1-E)*x+E*atan(B*x)-tan(pi/(2*C));
        Xp=vpasolve(f1,x);
        %Xp=double(Xp);
        max4(cont)=Xp;
    end
    cont=cont+1;
 end 

 tempo=[5:0.002:10];
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
