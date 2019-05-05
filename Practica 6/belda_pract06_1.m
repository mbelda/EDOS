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

plot(t,w,'black')
legend("Runge-Kutta");