display('---- 1. VARIABLES SEPARADAS ----');
syms x(t);
cond = [x(2)==1];
ecu = diff(x,t) == (x.^2 + x)./(t.^2 - t);
xSol(t) = dsolve(ecu,cond)
display('------------');
display('---- 2. VARIABLES SEPARADAS ----');
syms x(t);
ecu = t.*diff(x,t) + (2.*t.^2 - 1).*cot(x) == 0;
cond = [x(1)==1];
xSol(t) = dsolve(ecu,cond)
display('------------');
display('---- 3. CAMBIO LINEAL ----');
syms x(t);
ecu = diff(x,t) == (t + x).^2;
xSol(t) = dsolve(ecu)
display('------------');
display('---- 4. HOMOGENEA ----');
syms x(t);
ecu = t.^2*diff(x,t) -3.*t.*x -2.*x.^2== 0;
xSol(t) = dsolve(ecu)
display('------------');
display('---- 5. FACTOR INTEGRANTE ----');
syms x(t);
ecu = t.*diff(x,t) -3.*x == t.^4;
xSol(t) = dsolve(ecu)
display('------------');
display('---- 6. BERNOUILLI ----');
syms a b x(t);
ecu = diff(x,t) + x./t == t.^2*x.^2;
xSol(t) = dsolve(ecu)
display('------------');
display('---- 7. RICATTI ----');
syms x(t);
ecu = t.^2.*diff(x,t) + t.^2.*x.^2 +t.*x -1== 0;
xSol(t) = dsolve(ecu)
disp('------------');
display('---- 8. EXACTAS ----');
syms x(t);
ecu = diff(x,t) == - (2*t*x^2 - 3)/(2*t^2*x + 4);
xSol(t) = dsolve(ecu)
%f(t,x)=x^2*t^2 -3t + 4x = C
display('------------');
display('---- 9. EXACTA CON FACTOR INTEGRANTE ----');
syms x(t);
ecu = diff(x,t) == (2.*t.*x)/(3.*t.^2 - x.^2);
xSol(t) = dsolve(ecu)
display('------------');
display('---- 10. ECUACION DE ORDEN 2 DE EULER (1) ----');
syms x(t);
ecu = t.^2.*diff(x,t,2) + 2.*t.*diff(x,t) -12.*x == 0;
xSol(t) = dsolve(ecu)
%CAMBIO: x = t^n y slae una con coefs cte
display('------------');
display('---- 11. ECUACION DE ORDEN 2 DE EULER (2) ----');
syms x(t);
ecu = t.^2.*diff(x,t,2) + 3.*t.*diff(x,t) +10.*x == 0;
xSol(t) = dsolve(ecu)
display('------------');
display('---- 12. ECUACION DE ORDEN 2 HOMOGENEA (1) ----');
syms x(t);
ecu = diff(x,t,2) + diff(x,t) -2.*x == 0;
xSol(t) = dsolve(ecu)
display('------------');
display('---- 13. ECUACION DE ORDEN 2 HOMOGENEA (2) ----');
syms x(t);
ecu = diff(x,t,2) + 4.*x == 0;
xSol(t) = dsolve(ecu)
display('------------');