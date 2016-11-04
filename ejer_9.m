clear all
clc
%Uno de los programas de la sección 8.2 muestra que una cantidad de $ 1000,
%se duplicará en ocho Años con una tasa de interés del 10%.
%Utilizando la misma tasa de interés, ejecute el programa con Saldos iniciales de $ 500,
% 2000 y $ 10,000 (por ejemplo) para ver cuánto tiempo tardan en duplicar. 
%Los resultados pueden sorprenderle.
a=input('saldo inicial=')
tasa_interes=0.1;
y=a
years=0;
disp('balance por año')
while y<2*a
    y=y+(tasa_interes*y);
    years=years+1
    disp ([years y])
end
