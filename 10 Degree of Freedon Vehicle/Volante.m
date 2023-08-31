function delta=Volante(V)
angvol=V(1);
t=V(2);
dt=V(3);
uc=V(4);
tf1=6+dt;
tf2=tf1+dt;
tf3=tf2+10/uc;
tf4=tf3+dt;
tf5=tf4+dt;
% tf6=tf5+dt/4.5;

if t<6
    delta=0;

elseif t>=6 && t<tf1
    delta=(angvol/2)*(1+sin(2*pi*(1/dt)*(t-6)-pi/2));

elseif t>=tf1 && t<tf2
    delta=-(angvol/2)*(1+sin(2*pi*(1/dt)*(t-tf1)-pi/2));

elseif t>=tf2 && t<tf3     
    delta=0;

elseif t>=tf3 && t<tf4
    delta=-1*(angvol/2)*(1+sin(2*pi*(1/dt)*(t-tf3)-pi/2));

elseif t>=tf4 && t<tf5
    delta=1.1*(angvol/2)*(1+sin(2*pi*(1/dt)*(t-tf4)-pi/2));

% elseif t>=tf5 && t<tf6
%     delta=(angvol/2)*(1+sin(2*pi*(1/dt)*(t-tf5)-pi/2));
else 
    delta=0;

end    
    
    
    
    
    
    