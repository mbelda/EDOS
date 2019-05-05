
fg = @(t, x)[x(2); -4.*pi.^2.*x(1)./(x(1).^2 + x(3).^2)^(3/2); x(4);
-4.*pi.^2.*x(3)./(x(1).^2 + x(3).^2)^(3/2)];
x0 = [1, 0, 0, 6.27];
tf=1;
tspan = [0 tf];

[t,x] = ode45(fg, tspan, x0);
plot(x(:,1), x(:,3), 'blue');
title('Orbita de un planeta');