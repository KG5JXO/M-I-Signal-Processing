close all
clearvars
clc
car1=importdata ('C:\Users\Cole\Desktop\Classes\M&IFinalProject\car data 1.txt','\t');
car2=importdata ('C:\Users\Cole\Desktop\Classes\M&IFinalProject\car data 2.txt','\t');

%%
figure(1)% Plot of Bumper Vibration at Lower RPM
plot (car1.data(:,1),car1.data(:,2))
title("Time(S),A1_X(g)")
figure(2)
plot (car1.data(:,1),car1.data(:,3)) 
title("Time(S),A1_Y(g)")
figure(3)
plot (car1.data(:,1),car1.data(:,4))
title("Time(S),A1_Z(g)")

fs=1000;%sampling rate
ts=1;%sample time
t=0:1/fs:ts;% discrete time vector
x=sin(4*pi*t)+cos(2*pi*t); %digital signal
figure(1);
plot(t,x);
fftx=fft(x);
f=0:1/ts:fs; %x axis of fft frequency vector
figure(2);
stem(f,abs(fftx)/length(x)*2); %plot fft

figure(4)% Plot of Motor Vibration at Lower RPM
plot (car1.data(:,1),car1.data(:,5))
title("Time(S),A2_X(g)")
figure(5)
plot (car1.data(:,1),car1.data(:,6))
title("Time(S),A2_Y(g)")
figure(6)
plot (car1.data(:,1),car1.data(:,7))
title("Time(S),A2_Z(g)")


%%
figure(7)%%Plot of Bumper Vibration at Higher RPM
plot (car2.data(:,1),car2.data(:,2))
title("Time(S),A1_X(g)")
figure(8)
plot (car2.data(:,1),car2.data(:,3))
title("Time(S),A1_Y(g)")
figure(9)
plot (car2.data(:,1),car2.data(:,4))
title("Time(S),A1_Z(g)")



figure(10)%Plot of Motor Vibration at Higher RPM
plot (car2.data(:,1),car2.data(:,5))
title("Time(S),A2_X(g)")
figure(11)
plot (car2.data(:,1),car2.data(:,6))
title("Time(S),A2_Y(g)")
figure(12)
plot (car2.data(:,1),car2.data(:,7))
title("Time(S),A2_Z(g)")

