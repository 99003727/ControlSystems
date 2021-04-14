%% Title:Control System-Second Order System
%Author:Kinjal Kundu
%PS No:99003744
%Date:10/04/2021
%Version:1.0


%% This Document has equation for DC Motor
%Equation:dVout/dt=Vin/RC
%T(s)=(1/(R*C)/(s)

%% Math analysis
%dependent variables:Vout,Vin
%independent variables:t
%constant:R,C
%Roots:0


%% Basic
T=1
sys1 = tf([1],[T,1])
subplot(5,2,1)
step(sys1)
subplot(5,2,2)
impulse(sys1)
S = stepinfo(sys1)
p1=pole(sys1)
z1=zero(sys1)

%% With Gain
T=1;
k=5;
sys_G = k*tf([1],[T,1])
subplot(5,2,3)
step(sys_G)
subplot(5,2,4)
impulse(sys_G)
S = stepinfo(sys_G);
p_g=pole(sys_G)
z_g=zero(sys_G)

%% With PI
T=1;
k=5;
Kp=10;
I=tf([10],[1,0]);  %Ki
PI=Kp+I;
sys_PI = PI*tf([1],[T,1])
subplot(5,2,5)
step(sys_PI)
subplot(5,2,6)
impulse(sys_PI)
S = stepinfo(sys_PI);
p_pi=pole(sys_PI)
z_pi=zero(sys_PI)
%% With PD
T=1;
k=5;
Kp=10;
D=tf([10,1],[0,1]);  %Kd
PD=Kp+D;
sys_PD = PD*tf([1],[T,1])
subplot(5,2,7)
step(sys_PD)
subplot(5,2,8)
impulse(sys_PD)
S = stepinfo(sys_PD);
p_pd=pole(sys_PD)
z_pd=zero(sys_PD)

%% With PID
T=1;
k=5;
Kp=10;
D=tf([10,1],[0,1]);  %Kd
I=tf([10],[1,0]);  %Ki
PID=Kp+D+I;
sys_PID = PID*tf([1],[T,1])
subplot(5,2,9)
step(sys_PID)
subplot(5,2,10)
impulse(sys_PID)
S = stepinfo(sys_PID);
p_pid=pole(sys_PID)
z_pid=zero(sys_PID)

%%
figure
pzmap(sys1)
%pzmap(sys_G)
%pzmap(sys_PI)
%pzmap(sys_PD)
%pzmap(sys_PID)


pidTuner(sys1)
pidTuner(sys_G)
pidTuner(sys_PI)
pidTuner(sys_PD)
pidTuner(sys_PID)

%% Analysis
% For normal system the poles are origin hence the system is marginally
% stable
% For gain system the poles are at same hence the system is marginally
% stable
% For PI system one zero at -1 ,since poles are not negative it is not
% stable
% For PD system 2 zeros are added 
% By comparing all the sytem PD and PID are more stable with less rise time
% and settling time and better overshoot
% For PD 


