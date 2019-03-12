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
a=0; b=0.2; N1=5; N2 = 50; N3 = 100; T0=0; x0=3;
f=@(t,x)[2.*x.*(5 - x)];
sol=@(t)[5./(1 + (2/3).*exp(-10.*t))];

h1=(b-a)./N1;
t1=zeros(N1+1,1);
w1=zeros(N1+1,1);
t1(1)=a;
w1(1)=x0;
for k=1:N1
    t1(k+1)=a+h1*k;
    w1(k+1)=w1(k)+h1*f(t1(k),w1(k));
end

h2=(b-a)./N2;
t2=zeros(N2+1,1);
w2=zeros(N2+1,1);
t2(1)=a;
w2(1)=x0;
for k=1:N2
    t2(k+1)=a+h2*k;
    w2(k+1)=w2(k)+h2*f(t2(k),w2(k));
end

h3=(b-a)./N3;
t3=zeros(N3+1,1);
w3=zeros(N3+1,1);
t3(1)=a;
w3(1)=x0;
for k=1:N3
    t3(k+1)=a+h3*k;
    w3(k+1)=w3(k)+h3*f(t3(k),w3(k));
end
q=sol(t3);

plot(t3,q,'black',t1,w1,'b--',t2,w2,'green--',t3,w3,'red--')
legend("Sol", "Aprox 5", "Aprox 50", "Aprox 100")

EGT1 = abs(sol(b) - w1(N1+1));
EGT2 = abs(sol(b) - w2(N2+1));
EGT3 = abs(sol(b) - w3(N3+1));
disp("Para N=5")
EGT1
disp("Para N=50")
EGT2
disp("Para N=100")
EGT3