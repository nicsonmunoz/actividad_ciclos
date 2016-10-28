clear all
clc
%Una persona que deposita $ 1000 en un banco. 
%El interés se capitaliza mensualmente a razón de 1% por mes.
%Escribir un programa que calcule el saldo mensual, pero sólo en una vez al año,
%durante 10 años (uso de bucles anidados, 
%con el bucle exterior durante 10 años y el bucle interior durante 12 meses). 
%Tenga en cuenta que después de 10 años el balance es $ 3,300.39, 
%mientras que si había habido interés compuesto anualmente a razón de 12% por año, 
%la equilibrio sólo habría sido $ 3,105.85. Ver si se puede vectorizar su solución
deposito(1)=1000
c=1;
for years=1:10 
    for months=1:12
        balance=deposito(c) * 1.01;
         c=c+1;
            deposito(c)=balance;
    end
       
end
