clear all;
clc;

vector = [7, 7, 4, 5, 9, 9, 4, 12, 8, 1, 8, 7, 3, 13, 2, 1, 17, 7, 12, 5, 6, 2, 1, 13, 14, 10, 2, 4, 9, 11, 3, 5, 12, 6, 10, 7];
x=length(vector);
sigma=5;
confLvl=input("Enter confidence level:");
alpha=1-confLvl;

xb=mean(vector);

t1=xb-sigma/sqrt(x)*norminv(1-alpha/2);
tu=xb-sigma/sqrt(x)*norminv(alpha/2);

fprintf("The %2.0f%% confidence interval is (%5.3f,%5.3f)\n",confLvl*100,t1,tu);

