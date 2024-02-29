clear all;
clc;
% add clf aka clear figure when working with plots (plot = figure)
clf;

% Approximations of the Binomial distribution

% Normal approximation of the Binomial distribution:
% For moderate values of p (0.05 ≤ p ≤ 0.95) and large values of n (n → ∞)
% bino(n, p) ≈ Norm(µ = np, σ = sqrt(np(p - 1))).

% Write a Matlab code to visualize how the Binomial distribution gradually takes
% the shape of the Normal distribution as n → ∞.

p = 0;
while p < 0.05 || p > 0.95
    p = input("Enter the probability of success: ");
end

for n = 1:100
    k = 0:n;
    px = binopdf(k, n, p);
    py = normpdf(k, n * p, sqrt(n * p * (1 - p)));

    plot(k, px, k, py, '--');
    legend('Real', 'Approximation');
    title('Binomial Approximation');
    
    pause(0.5);
end
