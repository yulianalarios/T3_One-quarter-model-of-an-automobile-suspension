% Llamar al ODE (Cuarto de carro)
T = [0 10];
x0 = [0 0 0 0];

% zde
z1 = @(t) 0.05*sin(0.5*pi*t);
z2 = @(t) 0.05*sin(20*pi*t);

% Caso a
[t_a, x_a] = ode45(@(t,x) dinamica3(t,x,z1), T, x0);
% Caso b
[t_b, x_b] = ode45(@(t,x) dinamica3(t,x,z2), T, x0);

% Gráficas

figure
plot(t_a, x_a(:,1),'LineWidth',1.5); hold on;   % x1 con z1
plot(t_a, x_a(:,2),'LineWidth',1.5);            % x2 con z1
grid on;

xlabel('t (s)');
ylabel('m');
legend('x1 (z1)','x2 (z1)');
title('Respuesta con z1');

figure
plot(t_b, x_b(:,2),'LineWidth',1.5); hold on;   % x2 con z2
plot(t_b, x_b(:,1),'LineWidth',1.5); hold on;   % x1 con z2
grid on;

xlabel('t (s)');
ylabel('m');
legend('x1 (z2)','x2 (z2)');
title('Respuesta con z2');