clear all;
clc;
p = 2;
while p <= 0 || p >=1
    p=input("p=");
end
N=input("Nuber of successes:");
S=input("S=");
X = zeros(1, S);
for i = 1:S
    n = rand;
    suc = 0;
    while N >= suc
        if n < p
            suc = suc + 1;
        else
            X(i) = X(i) + 1;
        end
        n = rand;
    end
end
U_X = unique(X);
N_X = hist(X, length(U_X));
relfreq=N_X / S;
K = 0:max(U_X);
pascal = nbinpdf(K, N, p);
plot(K, pascal, "o", U_X, relfreq, "c*")
legend("Pascal pdf", "Simulation");