m1=600;
b1=900;
Tau=m1/b1;
CF=1;
TF=CF*tf([0,1/b1],[Tau,1]);
%S = stepinfo(TF)
NCTF=feedback(TF,1);
figure
subplot(3,2,1),plot(impulse(NCTF))
title("Impulse ")
subplot(3,2,2),plot(step(NCTF))
title("Step ")
S1 = stepinfo(NCTF)
p1=pole(NCTF)

%% Negative feedback
m1=600;
b1=900;
Tau=m1/b1;
CF=10;
TF=CF*tf([0,1/b1],[Tau,1]);
%S = stepinfo(TF)
NCTF1=feedback(TF,1);
subplot(3,2,3),plot(impulse(NCTF1))
title("Impulse with Negative Feedback")
subplot(3,2,4),plot(step(NCTF1))
title("Step with Negative Feedback")
S1 = stepinfo(NCTF1)
p1=pole(NCTF1)


%% Positive  feedback 
m1=600;
b1=900;
Tau=m1/b1;
CF=10;
TF=CF*tf([0,1/b1],[Tau,1]);
%S = stepinfo(TF)
PCTF1=feedback(TF,-1);
subplot(3,2,5),plot(impulse(PCTF1))
title("Impulse with Positive feedback")
subplot(3,2,6),plot(step(PCTF1))
title("Step with Positive feedback")
S = stepinfo(PCTF1)
p4=pole(PCTF1)


