%% Title:Control System-First Order System: System analysis by changing gain
%Author:Prateek Chauhan
%PS No:99003739
%Date:7/04/2021
%Version:R2020b

%% This Document has equation for motion differential system
%Equation:mdv/dt+bv=u

%% Math analysis
%dependent variables:v
%independent variables:t,u
%constant:m,b
%Root:-b/m

%% Changing the gain of system 
%gain is 1 
m1=400;
b1=3000;
Tau=m1/b1;
TF1=tf([0,1/b1],[Tau,1])
T_R=4*Tau;
risetime=2.2/(b1/m1)
delaytime=1/(b1/m1)
settlingtime=4/(b1/m1)
steadystatevalue=1/b1
subplot(3,3,1),plot(impulse(TF1))
title("Impulse1")
subplot(3,3,2),plot(step(TF1))
title("Step1")
figure(2)



pzmap(TF1)