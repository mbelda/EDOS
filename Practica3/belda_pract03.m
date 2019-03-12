%%% EJEMPLO 1
%a=0; b=5; N=100; T0=0; x0=1;
%f=@(t,x)[x];
%sol=@(t)[exp(t)];

%%EJERCICIO 1
%a=0; b=0.2; N=10; T0=0; x0=-1;
%f=@(t,x)[2.*(x.^3)];
%sol=@(t)[-1./(sqrt(1-4.*t))];

%%% OTRA FUNCION : EJEMPLO DE ECUACION EXACTA %%%
a=1; b=3; N=10; T0=1; x0=3;
f=@(t,x)[(-2.*t+x)./(2.*x-t)];
sol=@(t)[t./2 + sqrt((t./2).^2-(t.^2-7))];



%%%%%%%%%%ENTRADAS%%%%%%%%%%%%%%%%%%%
% f es la función de la ODE. (Debe especificarse
% a y b son los extremos del intervalo.
% N es el numero de pasos.
%x0es el valor inicial.x(a)=x0.
%%%%%%%%%%%%%%%%%SALIDAS%%%%%%%%%%%%%%%%%%%%%
% t son los nodos de [a,b]
% w son las aproximaciones a la solucion.
h=(b-a)/N;
t=zeros(N+1,1);
w=zeros(N+1,1);
t(1)=a;
w(1)=x0;
for k=1:N
    t(k+1)=a+h*k;
    w(k+1)=w(k)+h*f(t(k),w(k));
end
q=sol(t);
plot(t,w,t,q);
legend("Aprox","Sol")