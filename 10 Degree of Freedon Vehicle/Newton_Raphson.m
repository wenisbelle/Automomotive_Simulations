function [ymax,ymin]=Newton_Raphson(X0,x0,B,E,C)

n=4;
epsilon = 5*10^-(n+1);
for i=1:1000
     f0=B*(1-E)*X0+E*atan(B*X0)-tan(pi/(2*C)); %Calculating the value of function at x0
     f0_der=(B*E)/(B^2*X0^2 + 1) - B*(E -1); %Calculating the value of function derivative at x0
     Y=X0-f0/f0_der; % The Formula
     err=abs(Y-X0);
if err<epsilon %checking the amount of error at each iteration
    break
end
X0=Y;
end
ymax = Y - rem(Y,10^-n); %Displaying upto required decimal places


n=4;
epsilon = 5*10^-(n+1);
for i=1:1000
     f0=B*(1-E)*x0+E*atan(B*x0)-tan(3*pi/(2*C)); %Calculating the value of function at x0
     f0_der=(B*E)/(B^2*x0^2 + 1) - B*(E - 1); %Calculating the value of function derivative at x0
     y=x0-f0/f0_der; % The Formula
err=abs(y-x0);
if err<epsilon %checking the amount of error at each iteration
break
end
x0=y;
end
ymin = y - rem(y,10^-n); %Displaying upto required decimal places

