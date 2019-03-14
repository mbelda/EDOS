a = 5;
b = 0.625;
tf=10;
f=@(t,x) [a-b.*x]
tspan=[0 tf];
x0=0;
[t,x]=ode45(f,tspan,x0);
sol =@(y) [8-8.*exp(-5.*y./8)];
q = sol(t);
plot(t,q,'black',t,x,'r--');
legend('Aprox','Sol');
xlabel('x');
ylabel('y');
title('Ecuación lineal');
