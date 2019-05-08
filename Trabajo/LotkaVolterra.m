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

f = @(t,x) [a*x(1) - b*(x(1)*x(2)); -c*x(2) + d*(x(1)*x(2))];
%cond 1: pocos depredadores y muchas presas
%cond 2: pocas presas y muchos depredadores
%cond 3: equilibrio
%cond 4: solo presas
%cond 5: solo depredadores
cond = [[10,2]; [5,10]; [2,1.5]; [5,0]; [0,5]];
for i = 1:size(cond)
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