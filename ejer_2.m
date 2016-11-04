clc 
clear all
%Hay muchas fórmulas para π de computación (la relación de la circunferencia de,
%un círculo a su diámetro). El más simple es \ pi 4 = 1 - 1/3 + 1/5 - 1/7 + 1/9 - ··· (8,4) 
%que proviene de poner x = 1 en la serie arctan x = x - x 3 3 + x 5 5 - x 7 7 + x 9 9 · ··· 
%(8.5) (un) Escribir un programa para calcular π utilizando la ecuación (8.4).
%Utilice tantos términos en el Serie como su computadora razonablemente permitirá 
%(comience modestamente, con 100 términos, Decir, y volver a ejecutar su programa
%con más y más cada vez). Usted debe encontrar que la serie converge muy lentamente, 
%se necesita una gran cantidad de términos para conseguir bastante cerca de π.
%(segundo) Reordenar la serie acelera la convergencia:
%\ pi 8 = 1 1 × 3 + 1 5 × 7 + 1 9 × 11 ··· Escribir un programa para calcular π usando 
%esta serie en su lugar. Deberías encontrar eso Usted necesita menos términos
%para alcanzar el mismo nivel de exactitud que usted consiguió en (a).
%(do) Una de las series más rápida para π es \ pi 4 = 6 arctan 1 8 + 2 arctan 1 57 arctan
%1 239 Utilice esta fórmula para calcular π. No utilice la función MATLAB atan para com-
%Pute los arctangents, ya que eso sería hacer trampa. En su lugar, utilice la ecuación (8.5)
%. (re) ¿Puedes vectorizar alguna de tus soluciones (si no lo has hecho
%ya).
nt=10000;
for n=1:nt
  FINDINGP(n)=(1/((2*n-1)));
    if sum(n==[1:2:nt])==1
        FINDINGP(n)=FINDINGP(n);
    1
    else
        2
        FINDINGP(n)=-FINDINGP(n);
    end 
end
Value=sum(FINDINGP)*4
