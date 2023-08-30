function [Acel]=Eq_mov(u)

global Cb m Vx Cr Db Iz Dr Cd Dd

Vy=u(1);
delta=u(2);
r=u(3);


Acel=[Cb/(m*Vx) (Cr/m - Vx);Db/(Iz*Vx) Dr/Iz]*[Vy;r] + [Cd/m;Dd/Iz]*delta;

end

