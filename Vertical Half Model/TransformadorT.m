function y=TransformadorT(V)
global a1 a2 

Aux=[1 -a1;1 a2];

%Vetor das forças
F=[V(1);V(2)];

y=Aux'*F;

end