function y=eqmovimento(V)

global Mch Iyy Cd p A

Fzcg=V(1);
Mcg=V(2);
Fxcg = V(3);

y1=[(Fzcg-9.81*Mch)/Mch;Mcg/Iyy];

y2 = (Fxcg/Mch);

y = [y1;y2];
end