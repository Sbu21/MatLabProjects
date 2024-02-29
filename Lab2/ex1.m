clear all;
clc;
clf;
n=3;
p=0.5;
k=0:3;
x=linspace(0,3);
a=binopdf(k, n, p);
[k;a]
b=binocdf(x, n, p);
c1=binopdf(0,n,p)
c2=1 - binopdf(1,n,p)
d1=binocdf(2,n,p)
d2=binocdf(2,n,p) - binopdf(2,n,p)
e1=1 - binocdf(1,n,p) + binopdf(1,n,p)
e2=1 - binocdf(1,n,p)