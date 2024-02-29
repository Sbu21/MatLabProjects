clear all;
clc;

premium=[22.4,21.7,24.5,23.4,21.6,23.3,22.4,21.6,24.8,20.0];
n1=length(premium);
regular=[17.7,14.8,19.6,19.6,12.1,14.8,15.4,12.6,14.0,12.2];
n2=length(regular);

confLvl=input("Enter confidence level:");
alpha=1-confLvl;

s1=var(premium);
s2=var(regular);

x1=mean(premium);
x2=mean(regular);

c=(s1/n1)/(s1/n1+s2/n2);
n=c*c/n1-1+(1-c)*(1-c)/n2-1;

t1=x1-x2-tinv(1-alpha/2,n)*sqrt(s1/n1+s2/n2);
tu=x1-x2+tinv(1-alpha/2,n)*sqrt(s1/n1+s2/n2);

fprintf("The %2.0f%% confidence interval is (%5.3f,%5.3f)\n",confLvl*100,t1,tu);