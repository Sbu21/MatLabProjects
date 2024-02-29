clear all;
clc;
p = 2;
while p <= 0 || p >=1
    p=input("p=")
end
S=input("Nuber of simulations:")
U = rand(1, S);
X = U < p;
U_X = unique(X);
N_X = hist(X, length(U_X));
[U_X;N_X]
relfreq=N_X / S;
[U_X; relfreq]