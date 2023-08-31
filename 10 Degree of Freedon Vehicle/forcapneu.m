function Fp=forcapneu(V)
global Kp Ka deltar

if (V<=0)
    Fp=0;
elseif (V>deltar)
    Fp=Ka*V+deltar*(Kp-Ka);
else
    Fp=Kp*V;
end

end