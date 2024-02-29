clear all;
clc;
p = 2;
while p <= 0 || p >=1
    p=input("p=");
end
S=input("Nuber of simulations:");
X = zeros(1, S);
for i = 1:S
    n = rand;
    c = 0;
    while n >= p
        c = c + 1;
        n = rand(1);
    end
    X(i) = c;
end
U_X = unique(X);
N_X = hist(X, length(U_X));
relfreq=N_X / S;
K = 0:max(U_X);
geo = geopdf(K, p);
plot(K, geo, "o", U_X, relfreq, "c*")
legend("Geopdf", "Simulation");