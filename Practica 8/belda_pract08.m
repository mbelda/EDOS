a = 0.1;
b = 0.2;
c = 0.3;
x0(1) = 100;
x0(2) = 0;
x0(3) = 0;
tf = 20;
tspan = [0 tf];
fg = @(t,x) [-a.*x(1); a.*x(1) - b.*x(2); a.*x(1) - b.*x(2) - c.*x(3)];
[t,x] = ode45(fg, tspan, x0);
plot(t,x);
title('Triple desintegracion');