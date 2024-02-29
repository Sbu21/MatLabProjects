clear all;
clc;
p = 2;
while p <= 0 || p >=1
    p=input("p=")
end
S=input("Nuber of simulations:")
N=input("Number of trials:")
U = rand(N, S);
M = U < p;
X = sum(M);
U_X = unique(X);
N_X = hist(X, length(U_X));
A = [U_X;N_X];
relfreq=N_X / S;
B = [U_X; relfreq];
K = 0:N;
bino = binopdf(K, N, p);
plot(K, bino, "g", U_X, N_X/S, "c*")
legend("Binopdf", "Simulation");