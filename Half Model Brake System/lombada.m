function y=lombada(t)
global Vcarro a1 a2 
t=t-10;

    if t<0
        y1=0;
    elseif t<3.7/Vcarro
    y1=pi*Vcarro/3.7*0.1*cos(pi*Vcarro/3.7*t);
    else
    y1=0;
    end
    
    if t<(a1+a2)/Vcarro
        y2=0;
    elseif t<(a1+a2+3.7)/Vcarro
        y2=pi*Vcarro/3.7*0.1*cos(pi*Vcarro/3.7*(t-(a1+a2)/Vcarro));
    else
        y2=0;
    end

    y=[y1;y2];
end