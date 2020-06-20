clc;
clear all;
close all;

syms w ;
%a = 0.1 ;
%a2 = 0.3 ;
%a3 = 0.5 ;
%a4 = 0.7 ;
%a5 = 0.9 ;

%ABSXw = 1/((1+a^2 -2*a*cos(w))^(1/2)) ;
%ANGXw = atand((-a*sin(w))/(1-cos(w))) ;

%ABSXw2 = 1/((1+a2^2 -2*a2*cos(w))^(1/2)) ;
%ANGXw2 = atand((-a2*sin(w))/(1-cos(w))) ;

%ABSXw3 = 1/((1+a3^2 -2*a3*cos(w))^(1/2)) ;
%ANGXw3 = atand((-a3*sin(w))/(1-cos(w))) ;

%ABSXw4 = 1/((1+a4^2 -2*a4*cos(w))^(1/2)) ;
%ANGXw4 = atand((-a4*sin(w))/(1-cos(w))) ;

%ABSXw5 = 1/((1+a5^2 -2*a5*cos(w))^(1/2)) ;
%ANGXw5 = atand((-a5*sin(w))/(1-cos(w))) ;

%subplot(5,2,1)
%fplot(ABSXw,[-pi pi]);
%title('abs(Xw) \n a=0.1 ');

%subplot(5,2,2)
%fplot(ANGXw,[-pi/2 pi/2]);
%title('angle(Xw) /n a=0.1 ');

%subplot(5,2,3)
%fplot(ABSXw2,[-pi pi]);
%title('abs(Xw2) a=0.3 ');

%subplot(5,2,4)
%fplot(ANGXw2,[-pi/2 pi/2]);
%title('angle(Xw2) a=0.3 ');

%subplot(5,2,5)
%fplot(ABSXw3,[-pi pi]);
%title('abs(Xw3) a=0.5 ');

%subplot(5,2,6)
%fplot(ANGXw3,[-pi/2 pi/2]);
%title('angle(Xw3) a=0.5 ');

%subplot(5,2,7)
%fplot(ABSXw4,[-pi pi]);
%title('abs(Xw4) a=0.7 ');

%subplot(5,2,8)
%fplot(ANGXw4,[-pi/2 pi/2]);
%title('angle(Xw4) a=0.7 ');

%subplot(5,2,9)
%fplot(ABSXw5,[-pi pi]);
%title('abs(Xw5) a=0.9 ');

%subplot(5,2,10)
%fplot(ANGXw5,[-pi/2 pi/2]);
%title('angle(Xw5) a=0.7 ');

Xw = (((0.2)^4)*exp(-1j*4*w))/(1-(0.2)*exp(-1j*w)) + (2.5)/(1-0.4*exp(-1j*w)) ;

subplot(2,1,1)
fplot(abs(Xw),[-pi pi]);
title('|X(w)|');

subplot(2,1,2)
fplot(angle(Xw),[-pi pi]);
title('angle(X(w))');


