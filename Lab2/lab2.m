clear all;
clc;
clf;
n=input("Enter number of trials: \n");
p=input("Enter probability of success: \n");
k=0:3;
x=linspace(0,3);
a=binopdf(k, n, p);
b=binocdf(x, n, p);
plot(k,a,"g*",x,b,"b")
title('cdf and pdf')
legend('pdf', 'cdf')