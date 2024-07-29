%RECTANGULAR
fp=1500;
tw=500;
fsample=8000;
tw=tw/fsample;
fc=fp+tw/2;
N=floor(0.9/tw);
h=ones(1,N);
hd=ones(1,N);
for i=1:N
 a(i)=(-(N-1)/2-1)+i;
end
rectangular=ones(1,N);
for i=1:N
 wc=2*pi*fc;
 h(i)=sin(a(i)*wc)/(a(i)*wc);
 hd(i)=h(i)*rectangular(i);
end
subplot(2,1,1);
stem(a,hd);
title('LPF with Rectangular Window');
legend('102115126,Achintya')
xlabel('t');
ylabel('hd');
[X2,w2]=freqz(hd,1,1024);
X2max=max(abs(X2));
subplot(2,1,2);
plot(w2/pi,20*log10(abs(X2)/X2max));
title('LPF with Rectangular Window Freq Response');
legend('102115126,Achintya')
xlabel('f');
ylabel('hd');


%% 

% Using Triangular Window
clc;
clear all;
wp=0.5*pi;
ws=0.75*pi;
tr_width=abs(ws-wp);
wc=(wp+ws)/2;
M=ceil(6.1*pi/tr_width)+1;
w_n=(triang(M));
n=-(M-1)/2:(M-1)/2;
fc=wc/(2*pi);
hd=2*fc*(sinc(2*fc*n));
h=hd.*w_n';
[HW,WW]=freqz(h,1);
subplot(2,2,3);
stem(n,w_n);
xlabel('n');
ylabel('W[n]');
title('Window Function');
legend('Achintya,102115126')
subplot(2,2,4);
plot(WW./pi,abs(HW));
xlabel('Normalized Frequency');
ylabel('Magnitude Response of LPF');
title('Low Pass Filter'); 
legend('102115126,Achintya')