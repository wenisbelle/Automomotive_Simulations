%% Primeiramente se deve fornecer as constantes do problema

m=777; %Chassis mass
Iy=1475; % YY Inertia
m1=43.28; %front wheel mass
m2=45.80; % rear wheel mass
a1=0.42*2.85; %Distance from the GC to the front
a2=2.85-a1; % Distance from the GC to the rear
k1=24700; %Front spring elastic constant
k2=32800; %Rear spring elastic constant
kp=198000; % Tire elastic constant
c1=2000; % Damper constant
c2=2000; % Damper constant

%% 
%Mass matrix
M=[m 0 0 0;0 Iy 0 0;0 0 m1 0;0 0 0 m2];

%Damping matrix
c=[c1+c2 a2*c1-a1-c1 -c1 -c2;a2*c2-a1*c1 c1*a1^2++c2*a2^2 a1*c1 -a2*c2;-c1 a1*c1 c1 0;-c2 -a2*c2 0 c2];

%Elastic matrix
K=[k1+k2 a2*k2-a1*k1 -k1 -k2;a2*k2-a1*k1 k1*a1^2+k2*a2^2 a1*k1 -a2*k2;-k1 a1*k1 k1+kp 0;-k2 -a2*k2 0 k2+kp];

%% Highvectors and highvalues
G =(M^-1)*K;
[V,H]= eig(G);% V = autovertor; H = autovalores
f=[sqrt(H(1,1));sqrt(H(2,2));sqrt(H(3,3));sqrt(H(4,4))]/(2*pi);

%% Matrix for bode's diagram

A = [-(inv(M))*c    -(inv(M))*K;
       eye(4)          zeros(4)];
B = [(inv(M))*[zeros(2);kp 0;0 kp];zeros(2);zeros(2)];
C = [zeros(4)   eye(4)];
D = [zeros(2);zeros(2)];

%% Diagrama de Bode

w = logspace(-1,3,1000);
[m1,f1]=bode(A,B,C,D,1,w);
[m2,f2]=bode(A,B,C,D,2,w);
bode(A,B,C,D,1)

x1 = 20*log10(m1);
x2 = 20*log10(m2);

figure (2)
subplot(2,1,1)
semilogx(w/(2*pi),m1);
xlim([0, 25]);
ylabel('Magnitude [dB]')
xlabel('Frequencia [Hz]')
title('Diagrama de Bode')

subplot(2,1,2)
semilogx(w/(2*pi),m2);
xlim([0, 25]);
ylabel('Magnitude [dB]')
xlabel('Frequencia [Hz]')
title('Diagrama de Bode')

























