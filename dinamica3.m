% Función dinámica (Cuarto de carro)
function dx = dinamica3(t,x,zde)

% Parámetros
m1 = 290;
b1 = 1000;
m2 = 59;
k1 = 16182;
f = 0;
k2 = 19000;

% z1 = @(t) 0.05*sin(0.5*pi*t);
% z2 = @(t) 0.05*sin(20*pi*t);
z = zde(t);

dx = zeros(4,1);

% Nuevas variables
x1 = x(1);      % dx(1) = dx1
x2 = x(2);      % dx(2) = dx2
x1p = x(3);     % dx(3) = dx1p
x2p = x(4);     % dx(4) = dx2

% Espacios de estado
dx(1) = x(3);
dx(2) = x(4);
dx(3) = (1/m1)*(-b1*x(3) + b1*x(4) - k1*x(1) + (k1*x(2) + f));
dx(4) = (1/m2)*(b1*x(3) - b1*x(4) + k1*x(1) - (k1 + k2)*x(2) - f + k2*z);

end

