function y=Estercamento(V)
global b1 b2 a1 a2

w=b1+b2;
l=a1+a2;

if V(5)==0
    alp1=V(1);
    alp2=V(2);
    alp3=V(3);
    alp4=V(4);
    
elseif V(5)>0
    din=acot(cot(V(5))-w/(2*l));
    dout=acot(cot(V(5))+w/(2*l));
    alp1=V(1)-din;
    alp2=V(2)-dout;
    alp3=V(3);
    alp4=V(4);
else
    din=acot(cot(V(5))-w/(2*l));
    dout=acot(cot(V(5))+w/(2*l));
    alp1=V(1)-dout;
    alp2=V(2)-din;
    alp3=V(3);
    alp4=V(4);
end    

y=[alp1;alp2;alp3;alp4];

end