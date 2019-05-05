%%% ECUACIÓN %%%
a=0; b=3; N = 10; T0=0; x0=1;
f=@(t,x)[x];
sol = @(t)[exp(t)];

%%% RUNGE KUTTA %%%
h=(b-a)./N;
t=zeros(N+1,1);
w=zeros(N+1,1);
t(1)=a;
w(1)=x0;
for k=1:N
    t(k+1)=a+h*k;
    p1 = h*f(t(k),w(k));
    p2 = h*f(t(k) + h/2, w(k) + p1/2);
    p3 = h*f(t(k) + h/2, w(k) + p2/2);
    p4 = h*f(t(k+1), w(k) + p3);
    w(k+1)=w(k)+ 1/6 * (p1 + 2*p2 + 2*p3 + p4);
end

%%% EULER %%%
t3=zeros(N+1,1);
w3=zeros(N+1,1);
t3(1)=a;
w3(1)=x0;
for k=1:N
    t3(k+1)=a+h*k;
    w3(k+1)=w3(k)+h*f(t3(k),w3(k));
end


%%% EULER MEJORADO %%%
t2(1)=a;
w2(1)=x0;
for k=1:N
    t2(k+1)=a+h*k;
    wE(k+1)=w2(k)+h*f(t2(k),w2(k));
    w2(k+1)=w2(k)+h*((f(t2(k),w2(k))+f(t2(k+1),wE(k+1)))/2);
end

q = sol(t);

plot(t,w,'black',t2,w2,'red--',t3,w3,'blue--',t,q,'green--')
legend("Runge-Kutta", "Euler mej", "Euler", "Sol")

EGT1 = abs(sol(b) - w3(N+1));
EGT2 = abs(sol(b) - w2(N+1));
EGT3 = abs(sol(b) - w(N+1));

disp("Para Euler")
EGT1
disp("Para E. Mej")
EGT2
disp("Para runge-Kutta")
EGT3
