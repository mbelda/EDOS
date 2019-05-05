%{  
    MODELO LOTKA-VOLTERRA 
    x(t) son las presas
    y(t) son los depredadores
    
    x' =  ax - bxy
    y' = -cy + dxy
    a,c = Tasa de crecimiento de la especie > 0
    b,d = Coefs de interacción entre las especies > 0
%}
syms x(t) y(t);
a = 1.8; b = 0.9; c = 0.81; d = 0.54;

cond = [[10,2]; [5,2]; [2,1.5]]; cond2 = [2,1.5];
f = @(t,x) [a*x(1) - b*(x(1)*x(2)); -c*x(2) + d*(x(1)*x(2))];
for i = 1:3
    [t, x] = ode45(f, [0 25], cond(i, :));
    figure(i);
    subplot(2,1,1);
    grid on;
    hold on;
    plot(t, x(:,1), 'm');
    plot(t, x(:,2), 'black');
    legend('presa', 'depredador');
    title('Solución Lotka-Volterra');
    subplot(2,1,2);
    hold on;
    grid on;
    plot(x(:,1), x(:,2), 'blue');
    plot(c/d, a/b, 'm.', 'markersize', 10);
    title('Trayectorias');
end