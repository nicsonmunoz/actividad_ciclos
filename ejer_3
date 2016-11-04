clear all
clc
%El siguiente método de cálculo de π fue descubierta por Arquímedes:
A=1;
N=6;
c=3;
for i=1:10;
    Nalmacenado(c)=N
    N=2*N;
    A=((2-sqrt(4-A^2)))^(1/2);
    c=c+3;
end
L=(N*A)/2
U=L/(sqrt(((1-A^2)/2)))
P=(U+L)/2
K=[P P P P P P P P P P]
E=(U-L)/2
H=[E E E E E E E E E E]
plot(Nalmacenado,K),
hold on
plot(Nalmacenado,H),
grid on   
