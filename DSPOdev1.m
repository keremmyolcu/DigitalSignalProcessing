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
                                     %kullanýcýdan sinyal deðerlerini
kbasla = xbasla + hbasla ;           %baþlangýç indislerini okuma ve 
kbit = xbit + hbit ;                 %uzunluk ölçümü
n3 = kbasla:kbit ;      

konvo = conv(xn,hn);            %matlab'in konvolüsyon fonksiyonu

H =[hn,zeros(1,hlen)];
X = [xn,zeros(1,xlen)];         %array size'ýný aþmamak adýna 
                                %büyük bir array'e aldýk deðerleri
for i= 1 : (xlen + hlen - 1)
    y(i)=0;
    for j=1:xlen
        if(i-j+1>0)
            y(i)=y(i)+X(j)*H(i-j+1);       %yaptýðýmýz fonksiyondaki ana
        else                                %döngü
        end
    end
end

subplot(2,2,1)
stem(n1,xn)

subplot(2,2,2)
stem(n2,hn)                             %X,H,conv() ve y fonksiyonunu
                                        %gösterelim
subplot(2,2,3)
stem(n3,konvo)

subplot(2,2,4)
stem(n3,y)
