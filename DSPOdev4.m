A2 = fft(a);
B2 = fft(b);
C2 = fft(c);
D2 = fft(d);
E2 = fft(e);
F2 = fft(f);
G2 = fft(g);
H2 = fft(h);
I2 = fft(i);
J2 = fft(j);
K2 = fft(k);
L2 = fft(l);
M2 = fft(m);
N2 = fft(n);
O2 = fft(o);
P2 = fft(p);

%plot(abs(A2));
%abirinci = iclerdislar(50);    %781  yani 776
%aikinci = iclerdislar(106);    %1656 yani 1633

%plot(abs(B2));
%bbirinci = iclerdislar(61);   %953 yani 941
%bikinci = iclerdislar(78);    %1219 yani 1209

%plot(abs(C2));
%cbirinci = iclerdislar(46);     %719 yani 697
%cikinci = iclerdislar(106);     %1656 yani 1633

%plot(abs(D2));
%dbirinci = iclerdislar(56);     %875 yani 852
%dikinci = iclerdislar(96);      %1500 yani 1477

%plot(abs(E2));
%ebirinci = iclerdislar(46);     %719 yani 697
%eikinci = iclerdislar(87);      %1359 yani 1336

%plot(abs(F2));
%fbirinci = iclerdislar(50);     %781 yani 776
%fikinci = iclerdislar(78);      %1219 yani 1209

%plot(abs(G2));
%gbirinci = iclerdislar(56);     %875 yani 852
%gikinci = iclerdislar(78);      %1219 yani 1209

%plot(abs(H2));
%hbirinci = iclerdislar(46);     %719 yani 697
%hikinci = iclerdislar(78);      %1219 yani 1209

%plot(abs(I2));
%ibirinci = iclerdislar(46);     %719 yani 697
%iikinci = iclerdislar(96);      %1500 yani 1477

%plot(abs(J2));
%jbirinci = iclerdislar(61);     %953 yani 941
%jikinci = iclerdislar(87);      %1359 yani 1336

%plot(abs(K2));
%kbirinci = iclerdislar(56);     %875 yani 852
%kikinci = iclerdislar(87);      %1359 yani 1336

%plot(abs(L2));
%lbirinci = iclerdislar(61);     %953 yani 941
%likinci = iclerdislar(106);     %1656 yani 1633

%plot(abs(M2));
%mbirinci = iclerdislar(50);     %781 yani 776
%mikinci = iclerdislar(87);      %1359 yani 1336

%plot(abs(N2));
%nbirinci = iclerdislar(56);     %875 yani 852
%nikinci = iclerdislar(106)      %1656 yani 1633

%plot(abs(O2));
%obirinci = iclerdislar(61);     %953 yani 941
%oikinci = iclerdislar(96);      %1500 yani 1477

plot(abs(P2));
pbirinci = iclerdislar(50);     %781 yani 776
pikinci = iclerdislar(96);      %1500 yani 1477

function f = iclerdislar(x)

y = (2000*x)./128;               %icler dislar carpimi yapan func.

f = round(y);
end