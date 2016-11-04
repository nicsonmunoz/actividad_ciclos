clear all
clc
%escribir un programa para calcular la suma de la serie 1 2 + 2 2 + 3 2 ... 
%de tal manera que la suma es Tan grande como sea posible sin exceder 1000.
%El programa debe mostrar cuántos Términos de la suma.
for n=[1:1:100000];
    y(n)=n^2
    if sum(y)<=1000
        n=(n+1)
    else
        break;
    end
end
sum(y)    
 n  
