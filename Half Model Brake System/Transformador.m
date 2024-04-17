function y=Transformador(V)
global a1 a2 

Aux=[1 -a1;1 a2];

%Vetor de velocidade
Vcm=[V(1);V(2)];

y=Aux*Vcm;

end