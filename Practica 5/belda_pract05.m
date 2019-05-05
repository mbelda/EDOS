%%% EJEMPLO 1
%a=0; b=5; N=100; T0=0; x0=1;
%f=@(t,x)[x];
%sol=@(t)[exp(t)];

%%EJERCICIO 1
%a=0; b=0.2; N=10; T0=0; x0=-1;
%f=@(t,x)[2.*(x.^3)];
%sol=@(t)[-1./(sqrt(1-4.*t))];

%%% OTRA FUNCION : EJEMPLO DE ECUACION EXACTA %%%
% a=1; b=3; N=10; T0=1; x0=3;
% f=@(t,x)[(-2.*t+x)./(2.*x-t)];
% sol=@(t)[t./2 + sqrt((t./2).^2-(t.^2-7))];

%%EJERCICIO PRACTICA 4 N=5
a=0; b=0.2; N = 10; T0=0; x0=3;
f=@(t,x)[2.*x.*(5 - x)];
sol=@(t)[5./(1 + (2/3).*exp(-10.*t))];

h=(b-a)./N;
t=zeros(N+1,1);
w=zeros(N+1,1);
t(1)=a;
w(1)=x0;
for k=1:N
    t(k+1)=a+h*k;
    w(k+1)=w(k)+h*f(t(k),w(k));
end
q = sol(t);

t2(1)=a;
w2(1)=x0;
for k=1:N
    t2(k+1)=a+h*k;
    wE(k+1)=w2(k)+h*f(t2(k),w2(k));
    w2(k+1)=w2(k)+h*((f(t2(k),w2(k))+f(t2(k+1),wE(k+1)))/2);
end

plot(t,q,'black',t2,w2,'red--',t,w,'blue--')
legend("Sol", "Euler mej", "Euler")

EGT1 = abs(sol(b) - w(N+1));
EGT2 = abs(sol(b) - w2(N+1));

disp("Para Euler")
EGT1
disp("Para E. Mej")
EGT2
