clc;
clear all;
close all;
syms  w  ;                  %omega açýsý sembolik

omg = pi/2;                 %omegaC 0-pi arasý deðer alacak
a = -10:.1:10 ;             %grafikte x -10 ve 10 arasýnda olsun

xn = sin(omg*a)./(pi*a) ;   % impulse response of the ideal lowpass filter(discrete)                
foriye = dtft(3);           % M=2 deðeri için DTFT dönüþümü
foriye2 = dtft(6);          % M=5 deðeri için DTFT dönüþümü
foriye3 = dtft(21);         % M=20 deðeri için DTFT dönüþümü


ezplot(abs(foriye),[-pi pi]);

subplot(2,2,1)
stem(a,xn);                 % discrete ILF'nin impulse response grafiði
title('Fonksiyon');

subplot(2,2,2)
ezplot(abs(foriye),[-pi pi]);    % |H(w)| grafiði(M=2)
title('M=2');

subplot(2,2,3)
ezplot(abs(foriye2),[-pi pi]);   % |H(w)| grafiði(M=5)
title('M=5');

subplot(2,2,4)
ezplot(abs(foriye3),[-pi pi]);   % |H(w)| grafiði(M=20)
title('M=20');

function f = dtft(t)
syms w;                                         %M deðerini kullanýcýdan alan ve
omg = pi/2;                                     %DTFT toplamýný sonuc olarak döndüren
sonuc = sin(0);                                 %fonksiyon tanýmý
for i=1:t
    sonuc=sonuc+sin(omg*i)/(pi*i)*exp(-1j*w*i);
end

for x=-1:-t
    sonuc=sonuc+sin(omg*x)/(pi*x)*exp(-1j*w*x);
end
sonuc = sonuc + cos(0);                         %formülde n = 0 için NaN dönmesi sebebiyle
f=sonuc;                                        % 0 deðeri 1 olan bir fonksiyon seçtim
end
