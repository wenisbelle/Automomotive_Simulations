
F1 = out.F1(2:1000001,2);
F2 = out.F2(2:1000001,2);
F3 = out.F3(2:1000001,2);

posicao = out.posicao(2:1000001,2);
velocidade = out.velocidade(2:1000001,2);
tempo = out.velocidade(2:1000001,1);

figure
plot(tempo,F1,'k','DisplayName','0 A')
hold on
plot(tempo,F2,'b','DisplayName','0.5 A')
plot(tempo,F3,'r','DisplayName','1.0 A')
hold off
grid on
xlabel('Time (s)'), ylabel('Force (N)')
axis([0 10 -1000 1300])
legend


figure
plot(posicao,F1,'k','DisplayName','0 A')
hold on
plot(posicao,F2,'b','DisplayName','0.5 A')
plot(posicao,F3,'r','DisplayName','1.0 A')
hold off
grid on
xlabel('Displacement (m)'), ylabel('Force (N)')
axis([-0.01 0.01 -1000 1300])
legend


figure
plot(velocidade,F1,'k','DisplayName','0 A')
hold on
plot(velocidade,F2,'b','DisplayName','0.5 A')
plot(velocidade,F3,'r','DisplayName','1.0 A')
hold off
grid on
xlabel('Velocity (m/s)'), ylabel('Force (N)')
axis([-0.03 0.03 -1000 1300])
legend

