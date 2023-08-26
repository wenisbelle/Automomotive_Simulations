clc
clear

%% Dados do exemplo 7.1

Fzr_s=3250;   % Força vertocal estática no eixo tras. (N)
W=700*9.81;    % Peso do veículo (N)
Fzf_s=W-Fzr_s;  % Força vertical estática no eixo diant. (N)

hcg=0.3;   % Altura do CG (m)
L=2.77;     % Distância entre-eixos (m)

psi=Fzr_s/W;
x=hcg/L;

skid_f=deg2rad(5);  % Ângulo de desliz. eixo dianteiro
skid_r=deg2rad(5);  % Ângulo de desliz. eixo traseiro

%% Fórmula mágica

par_burck=[1.28 23.99 0.52;
           0.86 33.82 0.35;
           1.37 6.46 0.67;
           0.19 94.13 0.06];

ct=2;   % 1-Asfalto seco; 2-Asfalto molhado; 3-Calçada portuguesa; 4-Neve

t1=par_burck(ct,1);
t2=par_burck(ct,2);
t3=par_burck(ct,3);

lb=(0:0.01:10)';
mi_final=t1*(1-exp(-t2)-t3);
k=(t1*(1-exp(-lb*t2)-lb*t3)).*(lb<=1)+mi_final.*(lb>1);

% Parâmetros PSO
m=50; %tamanho da população
p=4; %número de parâmetros estimados

% Valores iniciais e parâmetros do método
saida=0;
nmi=1000;
tol=1e-6;
j=1;  % Contador de iterações
V=zeros(m,p); %V inicial
X=rand(m,p); %população inicial
gind=X; %define o vetor de melhor resultado individual no início
alfa=0.2;
beta=2;
S=1000000;
Sind=1000*ones(m,p);

for i=1:1:m
    S0=S;
    c1=X(i,1);
    c2=X(i,2);
    c3=X(i,3);
    c4=X(i,4);
    mu=c1*sin(c2*atan(c3*lb-c4*(c3*lb-atan(c3*lb))));
    S=(k-mu)'*(k-mu);
    if S<S0
        gtot=X(i,:);
        Stot=S;
    end
end


while saida==0 & j<nmi

    for i=1:1:m
        r1=rand(1);
        r2=rand(1);
        V(i,:)=alfa*V(i,:)+beta*r1*(gind(i,:)-X(i,:))+beta*r2*(gtot-X(i,:));
        X(i,:)=X(i,:)+V(i,:);
        c1=X(i,1);
        c2=X(i,2);
        c3=X(i,3);
        c4=X(i,4);
        mu=c1*sin(c2*atan(c3*lb-c4*(c3*lb-atan(c3*lb))));
        S=(k-mu)'*(k-mu);

        if S<Sind(i)
            gind(i,:)=X(i,:);
            Sind(i)=S;
        end
        if S<Stot
            gtot=X(i,:);
            Stot=S;
        end
        if S<tol
            saida=5;
        end
    end
    fobj(j)=Stot;
    melhor_par(j,:)=gtot;
    it(j)=j;
    j=j+1;
end

c1=gtot(1);
c2=gtot(2);
c3=gtot(3);
c4=gtot(4);
%mu=c1*sin(c2*atan(c3*lb-c4*(c3*lb-atan(c3*lb))));

mu_f=c1*sin(c2*atan(c3*skid_f-c4*(c3*skid_f-atan(c3*skid_f))));
mu_r=c1*sin(c2*atan(c3*skid_r-c4*(c3*skid_r-atan(c3*skid_r))));

%% Cálculo das forças ótimas de frenagem
acel=(0:0.01:0.8)';
Fxf_opt=W*acel;
Fxr_opt=W*(sqrt((1-psi)^2/(4*x^2)+(1/x)*(Fxf_opt/W))-(1-psi)/(2*x)-Fxf_opt/W);

%% Cálculo das forças reais de frenagem

phi=0.3;
Fxr=phi*W*acel;
Fxf=Fxr/phi-Fxr;
Fzf_dyn=(1-psi+x*acel)*W;
mu_Tf=Fxf/Fzf_dyn;
Fzr_dyn=(psi-x*acel)*W;
mu_Tr=Fxr/Fzr_dyn;


%% Gráficos

% Linhas Auxiliares
x1=(0:0.01:0.1)';
y1=0.1-x1;
x2=(0:0.01:0.2)';
y2=0.2-x2;
x3=(0:0.01:0.3)';
y3=0.3-x3;
x4=(0:0.01:0.4)';
y4=0.4-x4;
x5=(0:0.01:0.5)';
y5=0.5-x5;
x6=(0:0.01:0.6)';
y6=0.6-x6;
x7=(0:0.01:0.7)';
y7=0.7-x7;
x8=(0:0.01:0.8)';
y8=0.8-x8;

figure
plot((Fxr_opt/W),(Fxf_opt/W),'-','LineWidth',2.0)        
hold on
plot((Fxr/W),(Fxf/W),'-','LineWidth',2.0)
plot(x1,y1,'--','Color','k')
plot(x2,y2,'--','Color','k')
plot(x3,y3,'--','Color','k')
plot(x4,y4,'--','Color','k')
plot(x5,y5,'--','Color','k')
plot(x6,y6,'--','Color','k')
plot(x7,y7,'--','Color','k')
plot(x8,y8,'--','Color','k')
hold off
xlabel('Fxr/W','FontSize',12)
ylabel('Fxf/W','FontSize',12)
legend('Condição Ótima','Condição Real','','FontSize',10)
grid