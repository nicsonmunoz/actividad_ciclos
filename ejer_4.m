clear all 
clc
%Escribir un programa para calcular una tabla de la función f (x) = x sen [ ? (1 + x 20) 2 ]
%durante el intervalo de (cerrado) [-1, 1] usando incrementos en x de (a) 0,2, (b) 0.1, y (c) 0,01.
%Use sus mesas para dibujar gráficas de f (x) para los tres casos (con la mano), 
%y observar que las mesas para (a) y (b) dan una imagen equivocada de f (x).
%Haga que su programa de dibujar el gráfica de f (x) para los tres casos, superpuesta.
disp('parte a')
N=[-1:0.2:1];
T=N.*sin((pi.*(1+(20.*N))./2))
disp('parte b')
M=[-1:0.1:1];
G=M.*sin((pi.*(1+(20.*M))./2))
disp('parte c')
O=[-1:0.01:1];
H=O.*sin((pi.*(1+(20.*O))./2))
figure
plot(G,M),grid on
figure
plot(H,O),grid on
figure
plot(N,T),grid on 


