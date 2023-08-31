%esterçamento manobra com ângulo máximo de 5°

%Posição do centro de massa do veículo no plano xy
figure
x=out.posicao_ChMR.signals.values(:,1);
y=out.posicao_ChMR.signals.values(:,2);
plot(x,y), xlabel('Posição na direção x'), ylabel('Posição na direção y'), title('Posição do centro de massa do chassi no plano xy'),
axis ([170 300 -1 10])

%Posição do chassi verticalmente
figure
t=out.posicao_ChMR.time(:,1);
h=out.posicao_ChMR.signals.values(:,3);
plot(t,h), xlabel('Tempo (s)'), ylabel('H (m)'), title('Altura do centro de massa do chassi'),


%Força vertical dos pneus
figure
Fpv1=out.Fpv1(:,2);
Fpv2=out.Fpv2(:,2);
Fpv3=out.Fpv3(:,2);
Fpv4=out.Fpv4(:,2);
plot(t,Fpv1,t,Fpv2,t,Fpv3,t,Fpv4), xlabel('Tempo (s)'), ylabel('F (N)'), title('Força vertical dos pneus'),

%Força lateral dos pneus  
figure
Fpl1=-out.Fpl1MR(:,2);
Fpl2=-out.Fpl2MR(:,2);
Fpl3=-out.Fpl3MR(:,2);
Fpl4=-out.Fpl4MR(:,2);
plot(t,Fpl1,t,Fpl2,t,Fpl3,t,Fpl4), xlabel('Tempo (s)'), ylabel('F (N)'), title('Força lateral dos pneus'),

%Ângulo de deslizamento dos pneus
figure
alp1=out.alp1(:,2);
alp2=out.alp2(:,2);
alp3=out.alp3(:,2);
alp4=out.alp4(:,2);
plot(t,alp1,t,alp2,t,alp3,t,alp4), xlabel('Tempo (s)'), ylabel('Alpha (º)'), title('Ângulo de deslizamento dos pneus'),

%Forcas das suspensoes
figure
Fs1=out.Fs1(:,2);
Fs2=out.Fs2(:,2);
Fs3=out.Fs3(:,2);
Fs4=out.Fs4(:,2);
plot(t,Fs1,t,Fs2,t,Fs3,t,Fs4), xlabel('Tempo (s)'), ylabel('F (N)'), title('Força das suspensões em função do tempo'),

%Forcas das molas
figure
Fm1=out.Fm1(:,2);
Fm2=out.Fm2(:,2);
Fm3=out.Fm3(:,2);
Fm4=out.Fm4(:,2);
plot(t,Fm1,t,Fm2,t,Fm3,t,Fm4), xlabel('Tempo (s)'), ylabel('F (N)'), title('Força das molas da suspensão em função do tempo'),

%compressão das molas
figure
xm1=out.xm1(:,2);
xm2=out.xm2(:,2);
xm3=out.xm3(:,2);
xm4=out.xm4(:,2);
plot(t,xm1,t,xm2,t,xm3,t,xm4), xlabel('Tempo (s)'), ylabel('x (m)'), title('Compressão das molas em função do tempo'),

%rolagem
figure
roll=out.roll(:,2);
plot(t,roll), xlabel('Tempo (s)'), ylabel('Roll (º)'), title('Ângulo de rolagem em função do tempo'),

%arfagem
figure
pitch=out.pitch(:,2);
plot(t,pitch), xlabel('Tempo (s)'), ylabel('Pitch (º)'), title('Ângulo de arfagem em função do tempo'),

%guinada
figure
yaw=out.yaw(:,2);
plot(t,yaw), xlabel('Tempo (s)'), ylabel('Yaw (°)'), title('Ângulo de guinada em função do tempo'),

%volante
figure
volante=out.volante(:,2);
plot(t,volante), xlabel('Tempo (s)'), title('Ângulo do volante em função do tempo'),











