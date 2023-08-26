function y=TransformadorT(V)
global a1 a2 
hcg = -V(5);

Aux=[1 -a1 0;
     1 a2 0;
     0 -hcg 1;
     0 -hcg 1];

%Vetor das forças
F=[V(1);V(2);V(3);V(4)];

y=Aux'*F;

end