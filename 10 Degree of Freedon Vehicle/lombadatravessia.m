function y=lombadatravessia(t)
global Vcarro a1 a2 
t=t-8;
y1=0;
if 0<t && t <1/Vcarro
    y1=0.05;
elseif 6/Vcarro <t && t <7/Vcarro
    y1=-0.05;
end

y2=0;
if (a1+a2)/Vcarro <t && t <(a1+a2+1)/Vcarro
    y2=0.05;
elseif (a1+a2+6)/Vcarro <t && t <(a1+a2+7)/Vcarro
    y2=-0.05;
end


    y=[y1;y2];
end