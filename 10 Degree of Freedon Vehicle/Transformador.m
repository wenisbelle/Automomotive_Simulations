function y=Transformador(V)
global a1 a2 b1 b2 

Tx=[1 0 0;0 cos(V(1)) -sin(V(1));0 sin(V(1)) cos(V(1))];
Ty=[cos(V(2)) 0 sin(V(2));0 1 0;-sin(V(2)) 0 cos(V(2))];
Tz=[cos(V(3)) -sin(V(3)) 0;sin(V(3)) cos(V(3)) 0;0 0 1];

 T=Tz*Ty*Tx;
%T=Tx*Ty*Tz;

r1=[a1;b1;0];
r2=[a1;-b2;0];
r3=[-a2;b1;0];
r4=[-a2;-b2;0];

% Aux=[eye(3) -tilde(T*r1);eye(3) -tilde(T*r2);eye(3) -tilde(T*r3);eye(3) -tilde(T*r4)];
Aux=[eye(3) -T*tilde(r1);eye(3) -T*tilde(r2);eye(3) -T*tilde(r3);eye(3) -T*tilde(r4)];


%Vetor de velocidade
Vcm=[V(4);V(5);V(6);V(7);V(8);V(9)];

y=[Aux*Vcm;V(3)];
end