function y=harmonica(V)
 
t=V(1)-8;
w=V(2);
A=V(3);

if t<0
    y=0;
else
    y=A*w*cos(w*t);
end

end