close all
clc
clear all
%Si una cantidad de dinero invertido por A se k años a una tasa de interés nominal anual
%r (expresada como una fracción decimal), el valor V de la inversión después de k años es 
%dada por V = A (1 + r / n) nk donde n es el número de períodos de capitalización por año. 
%Escribir un programa para calcular V como n se hace más y más grandes, es decir, 
%como los períodos de capitalización se vuelven más y Más frecuentes: mensuales, diarios
%, horarios, etc. Tome A = 1,000, r = 4%, y k = 10 años. Usted debe observar que su salida 
%se aproxima gradualmente a un límite de pista:. Utilizar una para el bucle que se dobla n
%cada vez, empezando con n = 1. Calcular el valor de la fórmula Ae rk para los mismos
%valores de A, R, y k (utilizar el MATLAB función exp), y compararlo con los valores de V
%calculados anteriormente. Qué ¿Concluyes?.
disp('ejercicio 8.7')
A=input('capital=')
k=input('numero de años=')
r=input('retencion anual=')
n=input('dijite la frecuiencia del periodo "12" para mensual,"1"anual,"360"diario')
if n==12
    y=1:(12*k);
    V=A*(1+(r./y)).^(y*k)
end
 if n==1
    x=1:(k*n);
    V=A*(1+(r./x)).^(x*k)
 end
 if n==360
     z=1:(k*n);
     V=A*(1+(r./z)).^(z*k)
 end
