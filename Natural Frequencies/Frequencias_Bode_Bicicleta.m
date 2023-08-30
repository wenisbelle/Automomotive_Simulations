%% Primeiramente se deve fornecer as constantes do problema

m=777; %Massa do chassi
Iy=1475; %Momento de inércia no eixo y
m1=43.28; %massa da roda frontal
m2=45.80; %Massa da roda da retaguarda
a1=0.42*2.85; %Distância entre o cg e o eixo frontal
a2=2.85-a1; %Distância entre o cg e o eixo da retaguarda
k1=24700; %Constante elástica da mola dianteira
k2=32800; %Contante elástica da mola traseira
kp=198000;
c1=2000;
c2=2000;
% Iy=0.6*m*a1*a2;

%% Matrizes relevantes ao problema
%Matriz de massa
M=[m 0 0 0;0 Iy 0 0;0 0 m1 0;0 0 0 m2];

%Matriz de amortecimento
c=[c1+c2 a2*c1-a1-c1 -c1 -c2;a2*c2-a1*c1 c1*a1^2++c2*a2^2 a1*c1 -a2*c2;-c1 a1*c1 c1 0;-c2 -a2*c2 0 c2];

%Matriz de regidez
K=[k1+k2 a2*k2-a1*k1 -k1 -k2;a2*k2-a1*k1 k1*a1^2+k2*a2^2 a1*k1 -a2*k2;-k1 a1*k1 k1+kp 0;-k2 -a2*k2 0 k2+kp];

%% Cálculo dos autovetores e autovalores
G =(M^-1)*K;
[V,H]= eig(G);% V = autovertor; H = autovalores
f=[sqrt(H(1,1));sqrt(H(2,2));sqrt(H(3,3));sqrt(H(4,4))]/(2*pi);

%% Matrizes do espaço de estados para o diagrama de Bode

% Matriz de estado
% Matriz de entrada
A = [-(inv(M))*c    -(inv(M))*K;
       eye(4)          zeros(4)];
% Matriz de saida
B = [(inv(M))*[zeros(2);kp 0;0 kp];zeros(2);zeros(2)];
% Matriz de transmissão direta
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

























