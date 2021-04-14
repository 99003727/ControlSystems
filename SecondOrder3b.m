%% Title:Control System-Second Order System
%Author:Sushma L Nagangoudra
%PS No:99003752
%Date:7/04/2021
%Version:1.0


%% This Document has movement of poles for Second Order System



zeros = 0;
poles = [-10 -5];
gain = 1;
sys = zpk(zeros,poles,gain)
hold on
pzmap(sys)
   

zeros = 0;
poles = [-9+5i -5+5i];
gain = 1;
sys = zpk(zeros,poles,gain)
hold on
pzmap(sys)


zeros = 0;
poles = [-15+2i -20+2i];
gain = 1;
sys = zpk(zeros,poles,gain)
hold on
pzmap(sys)

zeros = 0;
poles = [-15-2i -20-2i];
gain = 1;
sys = zpk(zeros,poles,gain)
hold on
pzmap(sys)

zeros = 0;
poles = [-15-2i -20-2i];
gain = 1;
sys = zpk(zeros,poles,gain)
hold on
pzmap(sys)