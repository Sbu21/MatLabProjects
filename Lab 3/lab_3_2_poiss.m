clear all;
clc;
% add clf aka clear figure when working with plots (plot = figure)
clf;

% Approximations of the Binomial distribution

% Poisson approximation of the Binomial distribution:
% If n ≥ 30 and p ≤ 0.05, then Bino(n, p) ≈ Poisson(λ = np).

% Compare graphically the two pdf’s.

p = 0;
while p <= 0 || p > 0.05
    p = input("Enter the probability of success: ");
end

for n = 30:100
    k = 0:n;
    px = binopdf(k, n, p);
    py = poisspdf(k, n * p);

    plot(k, px, k, py, '--');
    legend('Real', 'Approximation');
    title('Poisson Approximation');
    
    pause(0.5);
end
