clear all;
clc;
clf;
s=input("Enter number of simulations: \n");
n=3;
p=0.5;
a=rand(3,s) <= 0.5;
hist(sum(a))