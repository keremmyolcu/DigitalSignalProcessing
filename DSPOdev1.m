clc;
clear;
clear all;

xbasla = input('x[n]in baslangic indisi:');
xn = input('x[n]i giriniz:');
xlen = length(xn);                         
xbit = (xbasla + xlen - 1);
n1 = xbasla:xbit;

hbasla = input('h[n]in baslangic indisi:');
hn = input('h[n]i giriniz:');
hlen = length(hn);
hbit = (hbasla + hlen - 1);
n2 = hbasla:hbit;
                                     %kullan�c�dan sinyal de�erlerini
kbasla = xbasla + hbasla ;           %ba�lang�� indislerini okuma ve 
kbit = xbit + hbit ;                 %uzunluk �l��m�
n3 = kbasla:kbit ;      

konvo = conv(xn,hn);            %matlab'in konvol�syon fonksiyonu

H =[hn,zeros(1,hlen)];
X = [xn,zeros(1,xlen)];         %array size'�n� a�mamak ad�na 
                                %b�y�k bir array'e ald�k de�erleri
for i= 1 : (xlen + hlen - 1)
    y(i)=0;
    for j=1:xlen
        if(i-j+1>0)
            y(i)=y(i)+X(j)*H(i-j+1);       %yapt���m�z fonksiyondaki ana
        else                                %d�ng�
        end
    end
end

subplot(2,2,1)
stem(n1,xn)

subplot(2,2,2)
stem(n2,hn)                             %X,H,conv() ve y fonksiyonunu
                                        %g�sterelim
subplot(2,2,3)
stem(n3,konvo)

subplot(2,2,4)
stem(n3,y)
