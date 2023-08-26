function y = rodas(u)

global Iroda rd re fRR

Troda = -u(1);
vx = u(2);
wroda = u(3);
W = u(4);


b0 = 1.4;
b1 = 0;
b2 = 0.9;
b3 = 0;
b4 = 0.3;
b5 = 0;
b6 = 0;
b7 = 0;
b8 = 0;
b9 = 0;
b10 = 10;
b11 = 0;
b12 = 0;
b13 = 0;


sh=0;
sv = b11*W + b12;



if Troda == 0
    Fx = 0;
    wp =0;
    i=0;
else
    i =100*(1-vx/(re*wroda));
    Mu = b1*W + b2;

    C = b0;
    D = Mu*W;
    B = (1/(C*D))*(b3*W^2 + b4*W)*exp(-b5*W);
    E = (b6*W^2 + b7*W + b8)*(1-b13*sign(i+sh));

    x = i + sh;
    T = D*sin(C*atan(B*x-E*(B*x-atan(B*x))))+sv;

    Fx = T + sh;
    wp = (Troda - Fx*rd )/Iroda;
end


y = [wp;Fx;i];

end