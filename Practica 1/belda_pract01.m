
%%% VARIABLES %%%
syms y(t);
syms r;

%%%% EJERCICIO 1d1 %%%%
display('Ejercicio 1d1')
y(t)=t/3;
diff(y(t),t,4)+4*diff(y(t),t,3)+3*y(t)-t

%%%% EJERCICIO 1d2 %%%%
display('Ejercicio 1d2')
y(t)=t/3+exp(t);
diff(y(t),t,4)+4*diff(y(t),t,3)+3*y(t)-t
display('No es solución')

%%%% EJERCICIO 2b %%%%
display('Ejercicio 2b')
y(t)=exp(r*t);
r = solve(diff(y(t),t,2)-y(t)==0,r)

%%%% EJERCICIO 3a %%%%
display('Ejercicio 3a')
clear all;
syms y(t);
syms r;
y(t) = t.^r;
r = solve(t^2.*diff(y(t),t,2)+4.*t.*diff(y(t),t,1)+2.*y(t)==0,r)
display('No existe r>0 que lo cumpla')





