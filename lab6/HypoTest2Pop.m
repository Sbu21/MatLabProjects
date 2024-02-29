clear all;
clc;

premium=[22.4,21.7,24.5,23.4,21.6,23.3,22.4,21.6,24.8,20.0];
n1=length(premium);
regular=[17.7,14.8,19.6,19.6,12.1,14.8,15.4,12.6,14.0,12.2];
n2=length(regular);

alpha=input("Enter segnificance level:");
confLvl=1-alpha;

s1=var(premium);
s2=var(regular);
TAIL=0;%Left tail=-1, Right tail=1, two tailed=0

RR1=[-Inf, finv(alpha/2, n1-1, n2-1)];
RR2=[finv(1 - alpha/2, n1-1, n2-1), Inf];

[H,P,CI,STATS]=vartest2(premium, regular, alpha, TAIL);%M=1 by default
                                             %STATS.fstat = TS0, 
                                             %STATS.df1 = n1-1,
                                             %STATS.df2 = n2-1

fprintf("Subpoint A: \n");
fprintf("h is %d\n", H);
if(H == 1)
    fprintf("So the null hypothesis is rejected\n");
else
    fprintf("So the null hypothesis is not rejected\n");
end
fprintf("The rejection region is (%f, %f) U (%f, %f)\n",RR1, RR2);
fprintf("The value of test statistic F is %f\n",STATS.fstat);
fprintf("The P value of the test is %f\n",P);

[H,P,CI,STATS]=ttest2(premium, regular, alpha, 1, 'equal');

fprintf("Subpoint B: \n");
fprintf("h is %d\n", H);
if(H == 1)
    fprintf("So the null hypothesis is rejected\n");
else
    fprintf("So the null hypothesis is not rejected\n");
end
fprintf("The rejection region is (%f, %f) U (%f, %f)\n",RR1, RR2);
fprintf("The value of test statistic F is %f\n",STATS.tstat);
fprintf("The P value of the test is %f\n",P);

