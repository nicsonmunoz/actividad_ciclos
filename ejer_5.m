clear all 
clc
%El número trascendente e (2.71828182845904 ...) puede demostrarse que es el límite de 
%(1 + x)^ 1 / x cuando x tiende a cero (desde arriba).
%Escribir un programa que muestra cómo esta expresión converge a un correo 
%cuando x se acerca cada vez más cerca de cero
A=[1:0.1:1000000];
B=(1./A);
F=(1+B).^(1./B);
F(end)
