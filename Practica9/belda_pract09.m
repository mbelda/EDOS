display('SISTEMA 1 : SILLA DE MONTAR');

%%% DSOLVE %%%
clear all;
syms x(t) y(t);
a = -50:0.1:50;
figure(1);
hold on;
grid on;
axis([-5,5,-5,5]);
eqn = [diff(x,t) == 4*x + 3*y; diff(y,t) == 3*x - 4*y];
for c1 = -1:1
    for c2 = -1:1
        cond = [x(0) == c1, y(0) == c2];
        sol = dsolve(eqn, cond);
        solx(t) = sol.x;
        soly(t) = sol.y;
        plot(solx(a), soly(a),'blue');
    end
end
title("SISTEMA 1: SILLA DE MONTAR")
xlabel('x');
ylabel('y');


%%% ODE45 %%%
tspan = [-50 50];
fg = @(t,x) [4.*x(1) + 3.*x(2); 3.*x(1) - 4.*x(2)];
t = -50:0.1:50;
for c1 = -1:1
    for c2 = -1:1
        x0(1) = c1;
        x0(2) = c2;
        [t,x] = ode45(fg, tspan, x0);
        plot(x(:,1), x(:,2), 'red-o');
    end
end


%%% MANUAL %%%
clear all;
syms t;
A = [4 3;3 -4];
autovalores = (eig(A));
[V,D] = eig(A);
I = [1 0; 0 1];
E = exp(autovalores*t).*I;
a = -1:0.1:1;
for c1 = -1:1
    for c2 = -1:1
        C = [c1; c2]; 
        F = V*E*C; 
        h1(t) = F(1);
        h2(t) = F(2);
        plot(h1(a),h2(a),'black--');
    end
end

display('SISTEMA 2 : SUMIDERO');

%%% DSOLVE %%%
clear all;
syms x(t) y(t);
a = -50:0.1:50;
figure(2);
hold on;
grid on;
axis([-5,5,-5,5]);
eqn = [diff(x,t) == y; diff(y,t) == -3*x - 4*y];
for c1 = -1:1
    for c2 = -1:1
        cond = [x(0) == c1, y(0) == c2];
        sol = dsolve(eqn, cond);
        solx(t) = sol.x;
        soly(t) = sol.y;
        plot(solx(a), soly(a),'blue');
    end
end
title("SISTEMA 2: SUMIDERO");
xlabel('x');
ylabel('y');


%%% ODE45 %%%
tspan = [-50 50];
fg = @(t,x) [x(2); -3.*x(1) - 4.*x(2)];
t = -50:0.1:50;
for c1 = -1:1
    for c2 = -1:1
        x0(1) = c1;
        x0(2) = c2;
        [t,x] = ode45(fg, tspan, x0);
        plot(x(:,1), x(:,2), 'red-o');
    end
end


%%% MANUAL %%%
clear all;
syms t;
A = [0 1;-3 -4];
autovalores = (eig(A));
[V,D] = eig(A);
I = [1 0; 0 1];
E = exp(autovalores*t).*I;
a = -1:0.1:1;
for c1 = -1:1
    for c2 = -1:1
        C = [c1; c2]; 
        F = V*E*C; 
        h1(t) = F(1);
        h2(t) = F(2);
        plot(h1(a),h2(a),'black--');
    end
end


display('SISTEMA 3 : FUENTE');

%%% DSOLVE %%%
clear all;
syms x(t) y(t);
a = -50:0.1:50;
figure(3);
hold on;
grid on;
axis([-5,5,-5,5]);
eqn = [diff(x,t) == y; diff(y,t) == -2*x + 3*y];
for c1 = -1:1
    for c2 = -1:1
        cond = [x(0) == c1, y(0) == c2];
        sol = dsolve(eqn, cond);
        solx(t) = sol.x;
        soly(t) = sol.y;
        plot(solx(a), soly(a),'blue');
    end
end
title("SISTEMA 3: FUENTE")
xlabel('x');
ylabel('y');


%%% ODE45 %%%
tspan = [-50 50];
fg = @(t,x) [x(2); -2*x(1)+3*x(2)];
t = -50:0.1:50;
for c1 = -1:1
    for c2 = -1:1
        x0(1) = c1;
        x0(2) = c2;
        [t,x] = ode45(fg, tspan, x0);
        plot(x(:,1), x(:,2), 'red-o');
    end
end


%%% MANUAL %%%
clear all;
syms t;
A = [0 1;-2 3];
autovalores = (eig(A));
[V,D] = eig(A);
I = [1 0; 0 1];
E = exp(autovalores*t).*I;
a = -1:0.1:1;
for c1 = -1:1
    for c2 = -1:1
        C = [c1; c2]; 
        F = V*E*C; 
        h1(t) = F(1);
        h2(t) = F(2);
        plot(h1(a),h2(a),'black--');
    end
end



display('SISTEMA 4 : SILLA DE MONTAR');

%%% DSOLVE %%%
clear all;
syms x(t) y(t);
a = -50:0.1:50;
figure(4);
hold on;
grid on;
axis([-5,5,-5,5]);
eqn = [diff(x,t) == y; diff(y,t) == 2*x + y];
for c1 = -1:1
    for c2 = -1:1
        cond = [x(0) == c1, y(0) == c2];
        sol = dsolve(eqn, cond);
        solx(t) = sol.x;
        soly(t) = sol.y;
        plot(solx(a), soly(a),'blue');
    end
end
title("SISTEMA 4: SILLA DE MONTAR")
xlabel('x');
ylabel('y');


%%% ODE45 %%%
tspan = [-50 50];
fg = @(t,x) [x(2); 2*x(1)+x(2)];
t = -50:0.1:50;
for c1 = -1:1
    for c2 = -1:1
        x0(1) = c1;
        x0(2) = c2;
        [t,x] = ode45(fg, tspan, x0);
        plot(x(:,1), x(:,2), 'red-o');
    end
end


%%% MANUAL %%%
clear all;
syms t;
A = [0 1;2 1];
autovalores = (eig(A));
[V,D] = eig(A);
I = [1 0; 0 1];
E = exp(autovalores*t).*I;
a = -1:0.1:1;
for c1 = -1:1
    for c2 = -1:1
        C = [c1; c2]; 
        F = V*E*C; 
        h1(t) = F(1);
        h2(t) = F(2);
        plot(h1(a),h2(a),'black--');
    end
end

display('SISTEMA 5 : CIRCULOS');

%%% DSOLVE %%%
clear all;
syms x(t) y(t);
a = -50:0.1:50;
figure(5);
hold on;
grid on;
axis([-2,2,-2,2]);
eqn = [diff(x,t) == y; diff(y,t) == -x];
for c1 = -1:1
    for c2 = -1:1
        cond = [x(0) == c1, y(0) == c2];
        sol = dsolve(eqn, cond);
        solx(t) = sol.x;
        soly(t) = sol.y;
        plot(solx(a), soly(a),'blue');
    end
end
title("SISTEMA 5: CIRCULOS")
xlabel('x');
ylabel('y');


%%% ODE45 %%%
tspan = [-50 50];
fg = @(t,x) [x(2); -x(1)];
t = -50:0.1:50;
for c1 = -1:1
    for c2 = -1:1
        x0(1) = c1;
        x0(2) = c2;
        [t,x] = ode45(fg, tspan, x0);
        plot(x(:,1), x(:,2), 'red-o');
    end
end


%%% MANUAL %%%
clear all;
syms t;
A = [0 1;-1 0];
autovalores = (eig(A));
[V,D] = eig(A);
I = [1 0; 0 1];
E = exp(autovalores*t).*I;
a = -1:0.1:1;
for c1 = -1:1
    for c2 = -1:1
        C = [c1; c2]; 
        F = V*E*C; 
        h1(t) = F(1);
        h2(t) = F(2);
        plot(h1(a),h2(a),'black--');
    end
end

display('SISTEMA 6 : ESPIRAL (FUENTE)');

%%% DSOLVE %%%
clear all;
syms x(t) y(t);
a = -50:0.1:50;
figure(6);
hold on;
grid on;
axis([-5,5,-5,5]);
eqn = [diff(x,t) == y; diff(y,t) == -29*x + 4*y];
for c1 = -1:1
    for c2 = -1:1
        cond = [x(0) == c1, y(0) == c2];
        sol = dsolve(eqn, cond);
        solx(t) = sol.x;
        soly(t) = sol.y;
        plot(solx(a), soly(a),'blue');
    end
end
title("SISTEMA 6: ESPIRAL (FUENTE)")
xlabel('x');
ylabel('y');


%%% ODE45 %%%
tspan = [-50 50];
fg = @(t,x) [x(2); -29*x(1) + 4*x(2)];
t = -50:0.1:50;
for c1 = -1:1
    for c2 = -1:1
        x0(1) = c1;
        x0(2) = c2;
        [t,x] = ode45(fg, tspan, x0);
        plot(x(:,1), x(:,2), 'red-o');
    end
end


%%% MANUAL %%%
clear all;
syms t;
A = [0 1;-29 4];
autovalores = (eig(A));
[V,D] = eig(A);
I = [1 0; 0 1];
E = exp(autovalores*t).*I;
a = -1:0.1:1;
for c1 = -1:1
    for c2 = -1:1
        C = [c1; c2]; 
        F = V*E*C; 
        h1(t) = F(1);
        h2(t) = F(2);
        plot(h1(a),h2(a),'black--');
    end
end

display('SISTEMA 7 : ESPIRAL (SUMIDERO)');

%%% DSOLVE %%%
clear all;
syms x(t) y(t);
a = -50:0.1:50;
figure(7);
hold on;
grid on;
axis([-5,5,-5,5]);
eqn = [diff(x,t) == y; diff(y,t) == -29*x-4*y];
for c1 = -1:1
    for c2 = -1:1
        cond = [x(0) == c1, y(0) == c2];
        sol = dsolve(eqn, cond);
        solx(t) = sol.x;
        soly(t) = sol.y;
        plot(solx(a), soly(a),'blue');
    end
end
title("SISTEMA 7: ESPIRAL (SUMIDERO)")
xlabel('x');
ylabel('y');


%%% ODE45 %%%
tspan = [-50 50];
fg = @(t,x) [x(2); -29*x(1)-4*x(2)];
t = -50:0.1:50;
for c1 = -1:1
    for c2 = -1:1
        x0(1) = c1;
        x0(2) = c2;
        [t,x] = ode45(fg, tspan, x0);
        plot(x(:,1), x(:,2), 'red-o');
    end
end


%%% MANUAL %%%
clear all;
syms t;
A = [0 1;-29 -4];
autovalores = (eig(A));
[V,D] = eig(A);
I = [1 0; 0 1];
E = exp(autovalores*t).*I;
a = -1:0.1:1;
for c1 = -1:1
    for c2 = -1:1
        C = [c1; c2]; 
        F = V*E*C; 
        h1(t) = F(1);
        h2(t) = F(2);
        plot(h1(a),h2(a),'black--');
    end
end



