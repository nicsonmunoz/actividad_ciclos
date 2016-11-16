function [Mcompresion] = Problem15(k1,k2,d,W,h)
a = k1+2*k2;        % Coeficiente a para utilizar la fórmula cuadrática
b = -4*k2*d;        % Coeficiente b para utilizar la fórmula cuadrática
c = 2*k2*d^2-2*W'*h; % Coeficiente c para utilizar la fórmula cuadrática
x = sqrt(2*W'*h/k1); % x es la máxima compresión de resorte sólo si x < d
x1 = (-b + sqrt(b^2-4*a*c))/(2*a); % x1 es la máxima compresión de resorte sólo si x >= d
x2 = (-b - sqrt(b^2-4*a*c))/(2*a); % x2 es la máxima compresión de resorte sólo si x >= d
  if x<d
      Mcompresion = x;
      fprintf ('La máxima compresión de resorte es: x = %s \n',num2str(Mcompresion));
  else
      if x1>x2
          Mcompresion = x1;
          fprintf ('La máxima compresión de resorte es: x = %s \n',num2str(Mcompresion));
  end
  
%.........................................................................%  
% b) Use your function file to generate a plot of x versus h for 0<=h<=2
% meters. Use W = 100 newtons and the proceding values for k1, k2, and d.  

% Para solucionar el punto b solo es llamar la función y colocar 0:1/7:2 en
% el parámetro h, lo que significa que h va a variar desde 0<=h<=2

% llamar la función asi: Problem15(10^4,1.5*10^4,0.1,100,0:1/7:2)

close all                                       % Cierra todos los plots
figure(1)
plot(h,x,'LineWidth',1.5)
title('Gráfica máxima compresión de resorte vs altura');
xlabel ('Altura h');
ylabel ('Máxima compresión de resorte');
grid on

%.........................................................................%  
% c) Use your function file to generate a surface mesh plot and a contour
% plot of x versus h and W for 0<=W<=500 newtons and for 0<=h<=2 meters.
% Use the preceding values for k1, k2 and d.

% si tengo un vector desde 0:x:2 aumenta x veces, si yo digo que quiero una
% longitud de este vector de 15, hago lo siguiente: 15x=2+x y despejo
% x=1/7 para que dé una longitud de 15, análogo a 0:x:500 aumentando x 
% siguiente: 15x=500+x y despejo x=250/7 para que dé una longitud de 15

% Para solucionar el punto c solo es llamar la función y colocar 0:250/7:500 en
% el parámetro de W, y para el parámetro h 0:1/7:2, esto se hace para que
% las dimensiones de h y W sean las mismas.

% llamar la función asi: Problem15(10^4,1.5*10^4,0.1,0:250/7:500,0:1/7:2)

figure(2)
[X,Y] = meshgrid(h,x);
Z = peaks(X,Y);
meshc(Z)
title('Gráfica máxima compresión de resorte vs altura');
xlabel ('Eje x');
ylabel ('Eje y');
zlabel ('Eje z');
colormap(hot);
grid on
endProblem15(10^4,1.5*10^4,0.1,100,0:1/7:2)
