clc;
clear all;
close all;
syms  w  ;                  %omega a��s� sembolik

omg = pi/2;                 %omegaC 0-pi aras� de�er alacak
a = -10:.1:10 ;             %grafikte x -10 ve 10 aras�nda olsun

xn = sin(omg*a)./(pi*a) ;   % impulse response of the ideal lowpass filter(discrete)                
foriye = dtft(3);           % M=2 de�eri i�in DTFT d�n���m�
foriye2 = dtft(6);          % M=5 de�eri i�in DTFT d�n���m�
foriye3 = dtft(21);         % M=20 de�eri i�in DTFT d�n���m�


ezplot(abs(foriye),[-pi pi]);

subplot(2,2,1)
stem(a,xn);                 % discrete ILF'nin impulse response grafi�i
title('Fonksiyon');

subplot(2,2,2)
ezplot(abs(foriye),[-pi pi]);    % |H(w)| grafi�i(M=2)
title('M=2');

subplot(2,2,3)
ezplot(abs(foriye2),[-pi pi]);   % |H(w)| grafi�i(M=5)
title('M=5');

subplot(2,2,4)
ezplot(abs(foriye3),[-pi pi]);   % |H(w)| grafi�i(M=20)
title('M=20');

function f = dtft(t)
syms w;                                         %M de�erini kullan�c�dan alan ve
omg = pi/2;                                     %DTFT toplam�n� sonuc olarak d�nd�ren
sonuc = sin(0);                                 %fonksiyon tan�m�
for i=1:t
    sonuc=sonuc+sin(omg*i)/(pi*i)*exp(-1j*w*i);
end

for x=-1:-t
    sonuc=sonuc+sin(omg*x)/(pi*x)*exp(-1j*w*x);
end
sonuc = sonuc + cos(0);                         %form�lde n = 0 i�in NaN d�nmesi sebebiyle
f=sonuc;                                        % 0 de�eri 1 olan bir fonksiyon se�tim
end
