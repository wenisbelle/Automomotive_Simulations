function [V_global]=Transformador(u)

global Vx

Vy=u(1);
yaw=u(2);

V_global=[cos(yaw) -sin(yaw);sin(yaw) cos(yaw)]*[Vx;Vy];

end
