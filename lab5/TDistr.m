clear all;
clc;

vector = [7, 7, 4, 5, 9, 9, 4, 12, 8, 1, 8, 7, 3, 13, 2, 1, 17, 7, 12, 5, 6, 2, 1, 13, 14, 10, 2, 4, 9, 11, 3, 5, 12, 6, 10, 7];
x=length(vector);
confLvl=input("Enter confidence level:");
alpha=1-confLvl;
xb=mean(vector);

s=std(vector);

t1=xb-s/sqrt(x)*tinv(1-alpha/2,x-1);
tu=xb-s/sqrt(x)*tinv(alpha/2,x-1);

fprintf("The %2.0f%% confidence interval is (%5.3f,%5.3f)\n",confLvl*100,t1,tu);