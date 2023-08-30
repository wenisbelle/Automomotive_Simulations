function y=forcaarmotecedor(V)
global vp C1 C2
if V<vp
    y=V*C1;
else
    y=V*C2;
end

end