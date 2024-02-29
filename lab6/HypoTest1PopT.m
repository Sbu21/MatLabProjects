clear all;
clc;

vector = [7, 7, 4, 5, 9, 9, 4, 12, 8, 1, 8, 7, 3, 13, 2, 1, 17, 7, 12, 5, 6, 2, 1, 13, 14, 10, 2, 4, 9, 11, 3, 5, 12, 6, 10, 7];
x=length(vector);
alpha=input("Enter significance level:");
confLvl=1-alpha;
M=5.5;
TAIL=1;%Left tail=-1, Right tail=1, two tailed=0

RR=[tinv(confLvl, x-1), Inf];
[H,P,CI,STATS]=ttest(vector, M, alpha, TAIL);%H=0 if we don't reject H0, H=1 if we reject H0
                                             %STATS.tstat = TS0, 
                                             %STATS.df = n-1,
                                             %STATS.sd = aprox of the sigma

fprintf("h is %d\n", H);
if(H == 1)
    fprintf("So the null hypothesis is rejected\n");
else
    fprintf("So the null hypothesis is not rejected\n");
end
fprintf("The rejection region is (%f, %f)\n",RR);
fprintf("The value of test statistic t is %f\n",STATS.tstat);
fprintf("The P value of the test is %f\n",P);