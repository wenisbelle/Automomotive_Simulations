function y=eqmovimento(V)
global Mch Iyy 

Fcg=V(1);
Mcg=V(2);

y=[(Fcg-9.81*Mch)/Mch;Mcg/Iyy];

end